.class Lcom/kingroot/kinguser/ald$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ald;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qj:I

.field final synthetic avU:Lcom/kingroot/kinguser/ald;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ald;I)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/kingroot/kinguser/ald$3;->avU:Lcom/kingroot/kinguser/ald;

    iput p2, p0, Lcom/kingroot/kinguser/ald$3;->Qj:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/kingroot/kinguser/ald$3;->avU:Lcom/kingroot/kinguser/ald;

    invoke-static {v0}, Lcom/kingroot/kinguser/ald;->b(Lcom/kingroot/kinguser/ald;)Lcom/kingroot/kinguser/and$a;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/ald$3;->Qj:I

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/and$a;->fF(I)V

    .line 264
    return-void
.end method
