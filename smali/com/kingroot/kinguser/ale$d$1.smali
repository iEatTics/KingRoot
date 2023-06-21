.class Lcom/kingroot/kinguser/ale$d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ale$d;->a(Lcom/kingroot/kinguser/ame;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic awr:Lcom/kingroot/kinguser/ale$d;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ale$d;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lcom/kingroot/kinguser/ale$d$1;->awr:Lcom/kingroot/kinguser/ale$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/kingroot/kinguser/ale$d$1;->awr:Lcom/kingroot/kinguser/ale$d;

    iget-object v0, v0, Lcom/kingroot/kinguser/ale$d;->awk:Lcom/kingcore/uilib/ExpandableTextView;

    invoke-virtual {v0}, Lcom/kingcore/uilib/ExpandableTextView;->gF()Z

    .line 335
    iget-object v0, p0, Lcom/kingroot/kinguser/ale$d$1;->awr:Lcom/kingroot/kinguser/ale$d;

    invoke-static {v0}, Lcom/kingroot/kinguser/ale$d;->a(Lcom/kingroot/kinguser/ale$d;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ale$c;

    iget-object v1, p0, Lcom/kingroot/kinguser/ale$d$1;->awr:Lcom/kingroot/kinguser/ale$d;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/ale$d;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/kingroot/kinguser/ale$c;->j(Landroid/view/View;I)V

    .line 336
    return-void
.end method
