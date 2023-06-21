.class Lcom/kingroot/kinguser/bik$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bik;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic btA:Lcom/kingroot/kinguser/bik;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bik;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/kingroot/kinguser/bik$1;->btA:Lcom/kingroot/kinguser/bik;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const v2, 0x7f02024a

    .line 108
    iget-object v0, p0, Lcom/kingroot/kinguser/bik$1;->btA:Lcom/kingroot/kinguser/bik;

    invoke-static {v0}, Lcom/kingroot/kinguser/bik;->a(Lcom/kingroot/kinguser/bik;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/kingroot/kinguser/bik$1;->btA:Lcom/kingroot/kinguser/bik;

    invoke-static {v0}, Lcom/kingroot/kinguser/bik;->a(Lcom/kingroot/kinguser/bik;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f02020a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bik$1;->btA:Lcom/kingroot/kinguser/bik;

    invoke-static {v0}, Lcom/kingroot/kinguser/bik;->b(Lcom/kingroot/kinguser/bik;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/kingroot/kinguser/bik$1;->btA:Lcom/kingroot/kinguser/bik;

    invoke-static {v0}, Lcom/kingroot/kinguser/bik;->b(Lcom/kingroot/kinguser/bik;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bik$1;->btA:Lcom/kingroot/kinguser/bik;

    invoke-static {v0}, Lcom/kingroot/kinguser/bik;->c(Lcom/kingroot/kinguser/bik;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 117
    iget-object v0, p0, Lcom/kingroot/kinguser/bik$1;->btA:Lcom/kingroot/kinguser/bik;

    invoke-static {v0}, Lcom/kingroot/kinguser/bik;->c(Lcom/kingroot/kinguser/bik;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/bik$1;->btA:Lcom/kingroot/kinguser/bik;

    invoke-static {v0}, Lcom/kingroot/kinguser/bik;->d(Lcom/kingroot/kinguser/bik;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 121
    iget-object v0, p0, Lcom/kingroot/kinguser/bik$1;->btA:Lcom/kingroot/kinguser/bik;

    invoke-static {v0}, Lcom/kingroot/kinguser/bik;->d(Lcom/kingroot/kinguser/bik;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f07025a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 124
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/bik$1;->btA:Lcom/kingroot/kinguser/bik;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bik;->a(Lcom/kingroot/kinguser/bik;I)I

    .line 125
    return-void
.end method
