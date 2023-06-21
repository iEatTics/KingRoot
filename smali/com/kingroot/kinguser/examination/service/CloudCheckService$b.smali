.class public Lcom/kingroot/kinguser/examination/service/CloudCheckService$b;
.super Lcom/kingroot/kinguser/tp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/examination/service/CloudCheckService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/kingroot/kinguser/tp;-><init>()V

    return-void
.end method


# virtual methods
.method protected onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 71
    invoke-static {}, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->getInstance()Lcom/kingroot/kinguser/examination/service/CloudCheckService;

    move-result-object v0

    return-object v0
.end method
