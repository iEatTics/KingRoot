.class Lcom/kingroot/kinguser/activitys/ShareLoginActivity$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/activitys/ShareLoginActivity$4;->b(ZLcom/kingroot/kinguser/wd$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aiW:Lcom/kingroot/kinguser/activitys/ShareLoginActivity$4;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/activitys/ShareLoginActivity$4;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$4$1;->aiW:Lcom/kingroot/kinguser/activitys/ShareLoginActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$4$1;->aiW:Lcom/kingroot/kinguser/activitys/ShareLoginActivity$4;

    iget-object v0, v0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$4;->aiT:Lcom/kingroot/kinguser/activitys/ShareLoginActivity;

    invoke-static {v0}, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->e(Lcom/kingroot/kinguser/activitys/ShareLoginActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 288
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$4$1;->aiW:Lcom/kingroot/kinguser/activitys/ShareLoginActivity$4;

    iget-object v0, v0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$4;->aiT:Lcom/kingroot/kinguser/activitys/ShareLoginActivity;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->finish()V

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$4$1;->aiW:Lcom/kingroot/kinguser/activitys/ShareLoginActivity$4;

    iget-object v0, v0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$4;->aiT:Lcom/kingroot/kinguser/activitys/ShareLoginActivity;

    iget-object v0, v0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->aiM:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$4$1;->aiW:Lcom/kingroot/kinguser/activitys/ShareLoginActivity$4;

    iget-object v0, v0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$4;->aiT:Lcom/kingroot/kinguser/activitys/ShareLoginActivity;

    iget-object v0, v0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->aiM:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$4$1;->aiW:Lcom/kingroot/kinguser/activitys/ShareLoginActivity$4;

    iget-object v0, v0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$4;->aiT:Lcom/kingroot/kinguser/activitys/ShareLoginActivity;

    invoke-static {v0}, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->d(Lcom/kingroot/kinguser/activitys/ShareLoginActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method
