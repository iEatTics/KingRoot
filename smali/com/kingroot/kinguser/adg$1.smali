.class Lcom/kingroot/kinguser/adg$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/adg;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qj:I

.field final synthetic acu:Lcom/kingroot/kinguser/adg;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/adg;I)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/kingroot/kinguser/adg$1;->acu:Lcom/kingroot/kinguser/adg;

    iput p2, p0, Lcom/kingroot/kinguser/adg$1;->Qj:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 76
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/kingroot/kinguser/adg$1;->acu:Lcom/kingroot/kinguser/adg;

    invoke-static {v1}, Lcom/kingroot/kinguser/adg;->a(Lcom/kingroot/kinguser/adg;)Lcom/kingroot/kinguser/adg$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/kingroot/kinguser/adg$1;->acu:Lcom/kingroot/kinguser/adg;

    iget v2, p0, Lcom/kingroot/kinguser/adg$1;->Qj:I

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/adg;->a(Lcom/kingroot/kinguser/adg;I)I

    .line 78
    iget-object v1, p0, Lcom/kingroot/kinguser/adg$1;->acu:Lcom/kingroot/kinguser/adg;

    invoke-static {v1}, Lcom/kingroot/kinguser/adg;->a(Lcom/kingroot/kinguser/adg;)Lcom/kingroot/kinguser/adg$a;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, p1, v0}, Lcom/kingroot/kinguser/adg$a;->b(Landroid/view/View;I)V

    .line 81
    :cond_0
    return-void
.end method
