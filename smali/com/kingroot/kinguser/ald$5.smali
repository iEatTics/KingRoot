.class Lcom/kingroot/kinguser/ald$5;
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
    .line 292
    iput-object p1, p0, Lcom/kingroot/kinguser/ald$5;->avU:Lcom/kingroot/kinguser/ald;

    iput-object p2, p0, Lcom/kingroot/kinguser/ald$5;->avW:Lcom/kingroot/kinguser/ald$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/kingroot/kinguser/ald$5;->avW:Lcom/kingroot/kinguser/ald$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/ald$a;->awk:Lcom/kingcore/uilib/ExpandableTextView;

    invoke-virtual {v0}, Lcom/kingcore/uilib/ExpandableTextView;->gI()Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/kingroot/kinguser/ald$5;->avW:Lcom/kingroot/kinguser/ald$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/ald$a;->awk:Lcom/kingcore/uilib/ExpandableTextView;

    invoke-virtual {v0}, Lcom/kingcore/uilib/ExpandableTextView;->gG()Z

    .line 298
    :cond_0
    return-void
.end method
