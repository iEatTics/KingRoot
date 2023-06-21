.class public Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$GameReservationInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GameReservationInfo"
.end annotation


# instance fields
.field public activityId:Ljava/lang/String;

.field public beginTime:J

.field public endTime:J

.field public onlineFlag:Z

.field public publicDesc:Ljava/lang/String;

.field public qq:Ljava/lang/String;

.field public reservationCount:J

.field public reservationId:J

.field public reservationStatus:I

.field public reservationUrl:Ljava/lang/String;

.field public wx:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$GameReservationInfo;->activityId:Ljava/lang/String;

    .line 252
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$GameReservationInfo;->reservationUrl:Ljava/lang/String;

    .line 253
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$GameReservationInfo;->publicDesc:Ljava/lang/String;

    .line 257
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$GameReservationInfo;->qq:Ljava/lang/String;

    .line 258
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$GameReservationInfo;->wx:Ljava/lang/String;

    .line 260
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$GameReservationInfo;->onlineFlag:Z

    .line 247
    return-void
.end method
