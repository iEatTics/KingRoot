.class public Lcom/kingroot/kinguser/thread/StaticEntity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/rr;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public mAverageJobWaitingTime:D

.field public mAverageQueueSize:F

.field public mCreateThreadCount:I

.field public mJobFinishCount:I

.field public mMaxJobWaitingTime:J

.field public mMaxQueueSize:I

.field public mProcessName:Ljava/lang/String;

.field public mTotalDataCountForAverageJobWaitingTime:J

.field public mTotalDataCountForAverageQueueSize:J

.field mType:Lcom/kingroot/kinguser/bea$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/kingroot/kinguser/thread/StaticEntity;->mProcessName:Ljava/lang/String;

    .line 13
    return-void
.end method
