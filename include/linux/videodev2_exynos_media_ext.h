/*
 * Video for Linux Two header file for Exynos
 *
 * Copyright (c) 2012 Samsung Electronics Co., Ltd.
 *		http://www.samsung.com
 *
 * This header file contains several v4l2 APIs to be proposed to v4l2
 * community and until being accepted, will be used restrictly for Exynos.
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 2 as
 * published by the Free Software Foundation.
 */

#ifndef __LINUX_VIDEODEV2_EXYNOS_MEDIA_EXT_H
#define __LINUX_VIDEODEV2_EXYNOS_MEDIA_EXT_H

/* proposed CIDs, based on 3.3-rc3 */
#ifndef V4L2_CID_MPEG_VIDEO_H264_SEI_FP_ARRANGEMENT_TYPE
#define V4L2_CID_MPEG_VIDEO_H264_SEI_FP_ARRANGEMENT_TYPE	\
					(V4L2_CID_MPEG_MFC_BASE + 29)
enum v4l2_mpeg_video_h264_sei_fp_arrangement_type {
	V4L2_MPEG_VIDEO_H264_SEI_FP_TYPE_CHEKERBOARD	= 0,
	V4L2_MPEG_VIDEO_H264_SEI_FP_TYPE_COLUMN		= 1,
	V4L2_MPEG_VIDEO_H264_SEI_FP_TYPE_ROW		= 2,
	V4L2_MPEG_VIDEO_H264_SEI_FP_TYPE_SIDE_BY_SIDE	= 3,
	V4L2_MPEG_VIDEO_H264_SEI_FP_TYPE_TOP_BOTTOM	= 4,
	V4L2_MPEG_VIDEO_H264_SEI_FP_TYPE_TEMPORAL	= 5,
};
#endif
#ifndef V4L2_CID_MPEG_VIDEO_H264_FMO_MAP_TYPE
#define V4L2_CID_MPEG_VIDEO_H264_FMO_MAP_TYPE		\
					(V4L2_CID_MPEG_MFC_BASE + 31)
enum v4l2_mpeg_video_h264_fmo_map_type {
	V4L2_MPEG_VIDEO_H264_FMO_MAP_TYPE_INTERLEAVED_SLICES		= 0,
	V4L2_MPEG_VIDEO_H264_FMO_MAP_TYPE_SCATTERED_SLICES		= 1,
	V4L2_MPEG_VIDEO_H264_FMO_MAP_TYPE_FOREGROUND_WITH_LEFT_OVER	= 2,
	V4L2_MPEG_VIDEO_H264_FMO_MAP_TYPE_BOX_OUT			= 3,
	V4L2_MPEG_VIDEO_H264_FMO_MAP_TYPE_RASTER_SCAN			= 4,
	V4L2_MPEG_VIDEO_H264_FMO_MAP_TYPE_WIPE_SCAN			= 5,
	V4L2_MPEG_VIDEO_H264_FMO_MAP_TYPE_EXPLICIT			= 6,
};
#endif
#ifndef V4L2_CID_MPEG_VIDEO_H264_FMO_CHANGE_DIRECTION
#define V4L2_CID_MPEG_VIDEO_H264_FMO_CHANGE_DIRECTION	\
					(V4L2_CID_MPEG_MFC_BASE + 33)
enum v4l2_mpeg_video_h264_fmo_change_dir {
	V4L2_MPEG_VIDEO_H264_FMO_CHANGE_DIR_RIGHT	= 0,
	V4L2_MPEG_VIDEO_H264_FMO_CHANGE_DIR_LEFT	= 1,
};
#endif
#ifndef V4L2_CID_MPEG_VIDEO_H264_HIERARCHICAL_CODING_TYPE
#define V4L2_CID_MPEG_VIDEO_H264_HIERARCHICAL_CODING_TYPE	\
					(V4L2_CID_MPEG_MFC_BASE + 39)
enum v4l2_mpeg_video_h264_hierarchical_coding_type {
	V4L2_MPEG_VIDEO_H264_HIERARCHICAL_CODING_B	= 0,
	V4L2_MPEG_VIDEO_H264_HIERARCHICAL_CODING_P	= 1,
};
#endif
#endif /* __LINUX_VIDEODEV2_EXYNOS_MEDIA_EXT */