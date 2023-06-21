.class public Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;
.super Lcom/tencent/qqpimsecure/seachsdk/common/BaseEntity;
.source "SourceFile"


# instance fields
.field public categoryId:J

.field public code:I

.field public groupId:J

.field public hasNextPage:Z

.field public nextBeginPos:I

.field public serverInfo:Lcom/tencent/qqpimsecure/seachsdk/network/ServerInfo;

.field public softupdate_tips:I

.field public tips:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8
    invoke-direct {p0}, Lcom/tencent/qqpimsecure/seachsdk/common/BaseEntity;-><init>()V

    .line 18
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;->softupdate_tips:I

    .line 23
    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;->hasNextPage:Z

    .line 24
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;->nextBeginPos:I

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;->categoryId:J

    .line 26
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;->groupId:J

    .line 8
    return-void
.end method
