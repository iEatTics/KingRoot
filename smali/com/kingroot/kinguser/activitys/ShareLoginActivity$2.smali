.class Lcom/kingroot/kinguser/activitys/ShareLoginActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/activitys/ShareLoginActivity;
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
    .line 161
    iput-object p1, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$2;->aiT:Lcom/kingroot/kinguser/activitys/ShareLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 164
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$2;->aiT:Lcom/kingroot/kinguser/activitys/ShareLoginActivity;

    invoke-static {v0}, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->b(Lcom/kingroot/kinguser/activitys/ShareLoginActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 166
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18933

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 167
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$2;->aiT:Lcom/kingroot/kinguser/activitys/ShareLoginActivity;

    invoke-static {v0}, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->c(Lcom/kingroot/kinguser/activitys/ShareLoginActivity;)Lcom/kingroot/kinguser/wd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/wd;->isWXAppInstalled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$2;->aiT:Lcom/kingroot/kinguser/activitys/ShareLoginActivity;

    invoke-static {v0}, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->c(Lcom/kingroot/kinguser/activitys/ShareLoginActivity;)Lcom/kingroot/kinguser/wd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/wd;->nk()V

    .line 169
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$2;->aiT:Lcom/kingroot/kinguser/activitys/ShareLoginActivity;

    iget-object v0, v0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->aiM:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 170
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$2;->aiT:Lcom/kingroot/kinguser/activitys/ShareLoginActivity;

    iget-object v0, v0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->aiM:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$2;->aiT:Lcom/kingroot/kinguser/activitys/ShareLoginActivity;

    invoke-static {v0}, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->d(Lcom/kingroot/kinguser/activitys/ShareLoginActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    new-instance v0, Lcom/kingroot/kinguser/bid;

    iget-object v1, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$2;->aiT:Lcom/kingroot/kinguser/activitys/ShareLoginActivity;

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bid;-><init>(Landroid/content/Context;)V

    .line 175
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    .line 176
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->show()V

    .line 177
    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/bid;->setCanceledOnTouchOutside(Z)V

    .line 178
    const v2, 0x7f0704c7

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/bid;->setTitleText(Ljava/lang/String;)V

    .line 179
    const v2, 0x7f0704c6

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/bid;->d(Ljava/lang/CharSequence;)V

    .line 180
    const v2, 0x7f0704bf

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/bid;->lL(Ljava/lang/String;)V

    .line 181
    const v2, 0x7f0700c4

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->lK(Ljava/lang/String;)V

    .line 182
    new-instance v1, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$2$1;

    invoke-direct {v1, p0, v0}, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$2$1;-><init>(Lcom/kingroot/kinguser/activitys/ShareLoginActivity$2;Lcom/kingroot/kinguser/bid;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->a(Lcom/kingroot/kinguser/bid$b;)V

    .line 188
    new-instance v1, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$2$2;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$2$2;-><init>(Lcom/kingroot/kinguser/activitys/ShareLoginActivity$2;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 196
    new-instance v1, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$2$3;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$2$3;-><init>(Lcom/kingroot/kinguser/activitys/ShareLoginActivity$2;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->b(Lcom/kingroot/kinguser/bid$b;)V

    goto :goto_0

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$2;->aiT:Lcom/kingroot/kinguser/activitys/ShareLoginActivity;

    invoke-static {v0}, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->f(Lcom/kingroot/kinguser/activitys/ShareLoginActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 210
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18932

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 211
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$2;->aiT:Lcom/kingroot/kinguser/activitys/ShareLoginActivity;

    iget-object v1, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$2;->aiT:Lcom/kingroot/kinguser/activitys/ShareLoginActivity;

    iget-object v1, v1, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->aiR:Lcom/kingroot/kinguser/bwd;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->a(Lcom/kingroot/kinguser/bwd;)V

    .line 212
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$2;->aiT:Lcom/kingroot/kinguser/activitys/ShareLoginActivity;

    iget-object v0, v0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->aiM:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 213
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$2;->aiT:Lcom/kingroot/kinguser/activitys/ShareLoginActivity;

    iget-object v0, v0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->aiM:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$2;->aiT:Lcom/kingroot/kinguser/activitys/ShareLoginActivity;

    invoke-static {v0}, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->d(Lcom/kingroot/kinguser/activitys/ShareLoginActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 216
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$2;->aiT:Lcom/kingroot/kinguser/activitys/ShareLoginActivity;

    invoke-static {v0}, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->g(Lcom/kingroot/kinguser/activitys/ShareLoginActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$2;->aiT:Lcom/kingroot/kinguser/activitys/ShareLoginActivity;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->finish()V

    goto/16 :goto_0
.end method
