.class Lcom/kingroot/kinguser/axl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/axl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/axl;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axl;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/kingroot/kinguser/axl$2;->this$0:Lcom/kingroot/kinguser/axl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 187
    const v0, 0x7f0f001c

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 188
    if-nez v0, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 193
    iget-object v1, p0, Lcom/kingroot/kinguser/axl$2;->this$0:Lcom/kingroot/kinguser/axl;

    invoke-static {v1}, Lcom/kingroot/kinguser/axl;->e(Lcom/kingroot/kinguser/axl;)Lcom/kingroot/kinguser/yn$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/yn$a;->oX()Ljava/util/List;

    move-result-object v1

    .line 194
    if-ltz v0, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 195
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/yn$b;

    iget-object v0, v0, Lcom/kingroot/kinguser/yn$b;->data:Ljava/lang/Object;

    check-cast v0, Lcom/kingroot/kinguser/aub;

    .line 196
    iget-boolean v1, v0, Lcom/kingroot/kinguser/aub;->aQT:Z

    if-eqz v1, :cond_0

    .line 201
    iget v1, v0, Lcom/kingroot/kinguser/aub;->visible:I

    and-int/lit8 v1, v1, 0x40

    .line 202
    if-lez v1, :cond_2

    .line 203
    const/16 v1, 0x11

    iput v1, v0, Lcom/kingroot/kinguser/aub;->visible:I

    .line 206
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x186c5

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 211
    :goto_1
    iget-object v0, p0, Lcom/kingroot/kinguser/axl$2;->this$0:Lcom/kingroot/kinguser/axl;

    invoke-static {v0}, Lcom/kingroot/kinguser/axl;->c(Lcom/kingroot/kinguser/axl;)V

    goto :goto_0

    .line 209
    :cond_2
    const/16 v1, 0x41

    iput v1, v0, Lcom/kingroot/kinguser/aub;->visible:I

    goto :goto_1
.end method
