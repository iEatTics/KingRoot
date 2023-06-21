.class Lcom/kingroot/kinguser/alj$13;
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


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/alj;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lcom/kingroot/kinguser/alj$13;->axi:Lcom/kingroot/kinguser/alj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/kingroot/kinguser/alj$13;->axi:Lcom/kingroot/kinguser/alj;

    invoke-static {v0}, Lcom/kingroot/kinguser/alj;->b(Lcom/kingroot/kinguser/alj;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/activitys/ReserveActivity;->aK(Landroid/content/Context;)V

    .line 371
    return-void
.end method
