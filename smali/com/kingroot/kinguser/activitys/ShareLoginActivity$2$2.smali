.class Lcom/kingroot/kinguser/activitys/ShareLoginActivity$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/activitys/ShareLoginActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aiV:Lcom/kingroot/kinguser/activitys/ShareLoginActivity$2;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/activitys/ShareLoginActivity$2;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$2$2;->aiV:Lcom/kingroot/kinguser/activitys/ShareLoginActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$2$2;->aiV:Lcom/kingroot/kinguser/activitys/ShareLoginActivity$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$2;->aiT:Lcom/kingroot/kinguser/activitys/ShareLoginActivity;

    invoke-static {v0}, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->e(Lcom/kingroot/kinguser/activitys/ShareLoginActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 192
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$2$2;->aiV:Lcom/kingroot/kinguser/activitys/ShareLoginActivity$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$2;->aiT:Lcom/kingroot/kinguser/activitys/ShareLoginActivity;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->finish()V

    .line 194
    :cond_0
    return-void
.end method
