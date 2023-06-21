.class public Lcom/kingroot/kinguser/aga$f;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aga;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field final synthetic ajM:Lcom/kingroot/kinguser/aga;

.field ajP:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/aga;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 81
    iput-object p1, p0, Lcom/kingroot/kinguser/aga$f;->ajM:Lcom/kingroot/kinguser/aga;

    .line 82
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/aga$f;->ajP:Landroid/widget/TextView;

    .line 83
    const v0, 0x7f0f0076

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/aga$f;->ajP:Landroid/widget/TextView;

    .line 84
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/aga$e;)V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/kingroot/kinguser/aga$f;->ajP:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/kingroot/kinguser/aga$e;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    return-void
.end method
