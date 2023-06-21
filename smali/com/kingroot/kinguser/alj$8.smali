.class Lcom/kingroot/kinguser/alj$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/alj;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic axi:Lcom/kingroot/kinguser/alj;

.field final synthetic val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/alj;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/kingroot/kinguser/alj$8;->axi:Lcom/kingroot/kinguser/alj;

    iput-object p2, p0, Lcom/kingroot/kinguser/alj$8;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/kingroot/kinguser/alj$8;->axi:Lcom/kingroot/kinguser/alj;

    iget-object v1, p0, Lcom/kingroot/kinguser/alj$8;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/alj;->a(Lcom/kingroot/kinguser/alj;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 182
    return-void
.end method
