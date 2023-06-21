.class Lcom/kingroot/kinguser/ald$4;
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
.field final synthetic avU:Lcom/kingroot/kinguser/ald;

.field final synthetic avW:Lcom/kingroot/kinguser/ald$a;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ald;Lcom/kingroot/kinguser/ald$a;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/kingroot/kinguser/ald$4;->avU:Lcom/kingroot/kinguser/ald;

    iput-object p2, p0, Lcom/kingroot/kinguser/ald$4;->avW:Lcom/kingroot/kinguser/ald$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/kingroot/kinguser/ald$4;->avW:Lcom/kingroot/kinguser/ald$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/ald$a;->awk:Lcom/kingcore/uilib/ExpandableTextView;

    invoke-virtual {v0}, Lcom/kingcore/uilib/ExpandableTextView;->gF()Z

    .line 290
    return-void
.end method
