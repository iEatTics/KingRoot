.class public Lcom/kingroot/common/improve/protection/KCheckServiceJob;
.super Landroid/app/job/JobService;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static It:Lcom/kingroot/kinguser/wo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/kingroot/common/improve/protection/KCheckServiceJob$1;

    invoke-direct {v0}, Lcom/kingroot/common/improve/protection/KCheckServiceJob$1;-><init>()V

    sput-object v0, Lcom/kingroot/common/improve/protection/KCheckServiceJob;->It:Lcom/kingroot/kinguser/wo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Landroid/app/job/JobService;->onCreate()V

    .line 34
    sget-object v0, Lcom/kingroot/common/improve/protection/KCheckServiceJob;->It:Lcom/kingroot/kinguser/wo;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/wo;->ny()Z

    .line 35
    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method
