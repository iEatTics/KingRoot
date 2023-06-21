.class Lcom/kingroot/kinguser/activitys/ShareLoginActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingcore/uilib/ProgressWhell$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aiT:Lcom/kingroot/kinguser/activitys/ShareLoginActivity;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/activitys/ShareLoginActivity;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$1;->aiT:Lcom/kingroot/kinguser/activitys/ShareLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(F)V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 90
    cmpl-float v0, p1, v1

    if-nez v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$1;->aiT:Lcom/kingroot/kinguser/activitys/ShareLoginActivity;

    invoke-static {v0}, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->a(Lcom/kingroot/kinguser/activitys/ShareLoginActivity;)Lcom/kingcore/uilib/ProgressWhell;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kingcore/uilib/ProgressWhell;->setProgress(F)V

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    cmpl-float v0, p1, v2

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$1;->aiT:Lcom/kingroot/kinguser/activitys/ShareLoginActivity;

    invoke-static {v0}, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->a(Lcom/kingroot/kinguser/activitys/ShareLoginActivity;)Lcom/kingcore/uilib/ProgressWhell;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/ProgressWhell;->setProgress(F)V

    goto :goto_0
.end method
