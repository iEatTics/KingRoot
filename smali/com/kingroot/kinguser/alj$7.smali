.class Lcom/kingroot/kinguser/alj$7;
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

.field final synthetic axl:Lcom/kingroot/kinguser/alj$a;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/alj;Lcom/kingroot/kinguser/alj$a;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/kingroot/kinguser/alj$7;->axi:Lcom/kingroot/kinguser/alj;

    iput-object p2, p0, Lcom/kingroot/kinguser/alj$7;->axl:Lcom/kingroot/kinguser/alj$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/kingroot/kinguser/alj$7;->axi:Lcom/kingroot/kinguser/alj;

    iget-object v1, p0, Lcom/kingroot/kinguser/alj$7;->axl:Lcom/kingroot/kinguser/alj$a;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/alj;->a(Lcom/kingroot/kinguser/alj;Lcom/kingroot/kinguser/alj$a;)V

    .line 176
    return-void
.end method
