package service

import (
	"cmall/model"
	"cmall/serializer"
)

// ListCategoriesService 分类列表服务
type ListCategoriesService struct {
}

// List 视频列表
func (service *ListCategoriesService) List() serializer.Response {
	categories := []model.Categories{}

	if err := model.DB.Find(&categories).Error; err != nil {
		return serializer.Response{
			Status: 50000,
			Msg:    "数据库连接错误",
			Error:  err.Error(),
		}
	}

	return serializer.Response{
		Data: serializer.BuildCategories(categories),
	}
}