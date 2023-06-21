.class public Lcom/kingroot/kinguser/activitys/CommonDialogActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/activitys/CommonDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic aij:Lcom/kingroot/kinguser/activitys/CommonDialogActivity;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/activitys/CommonDialogActivity;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/kingroot/kinguser/activitys/CommonDialogActivity$a;->aij:Lcom/kingroot/kinguser/activitys/CommonDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/CommonDialogActivity$a;->aij:Lcom/kingroot/kinguser/activitys/CommonDialogActivity;

    invoke-static {v0}, Lcom/kingroot/kinguser/activitys/CommonDialogActivity;->a(Lcom/kingroot/kinguser/activitys/CommonDialogActivity;)Lcom/kingroot/kinguser/activitys/CommonDialogActivity$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/CommonDialogActivity$a;->aij:Lcom/kingroot/kinguser/activitys/CommonDialogActivity;

    invoke-static {v0}, Lcom/kingroot/kinguser/activitys/CommonDialogActivity;->b(Lcom/kingroot/kinguser/activitys/CommonDialogActivity;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    .line 227
    :goto_0
    iget-object v1, p0, Lcom/kingroot/kinguser/activitys/CommonDialogActivity$a;->aij:Lcom/kingroot/kinguser/activitys/CommonDialogActivity;

    invoke-static {v1}, Lcom/kingroot/kinguser/activitys/CommonDialogActivity;->a(Lcom/kingroot/kinguser/activitys/CommonDialogActivity;)Lcom/kingroot/kinguser/activitys/CommonDialogActivity$b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/kingroot/kinguser/activitys/CommonDialogActivity$b;->cV(I)V

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/CommonDialogActivity$a;->aij:Lcom/kingroot/kinguser/activitys/CommonDialogActivity;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/activitys/CommonDialogActivity;->finish()V

    .line 230
    return-void

    .line 226
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
