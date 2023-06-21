.class Lcom/kingroot/kinguser/bjd$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bjd$2;->a(Landroid/view/animation/Animation;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bwc:Landroid/view/ViewTreeObserver;

.field final synthetic bwd:I

.field final synthetic bwe:Lcom/kingroot/kinguser/bjd$2;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bjd$2;Landroid/view/ViewTreeObserver;I)V
    .locals 0

    .prologue
    .line 961
    iput-object p1, p0, Lcom/kingroot/kinguser/bjd$2$1;->bwe:Lcom/kingroot/kinguser/bjd$2;

    iput-object p2, p0, Lcom/kingroot/kinguser/bjd$2$1;->bwc:Landroid/view/ViewTreeObserver;

    iput p3, p0, Lcom/kingroot/kinguser/bjd$2$1;->bwd:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 18

    .prologue
    .line 964
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingroot/kinguser/bjd$2$1;->bwc:Landroid/view/ViewTreeObserver;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 967
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingroot/kinguser/bjd$2$1;->bwe:Lcom/kingroot/kinguser/bjd$2;

    iget-object v1, v1, Lcom/kingroot/kinguser/bjd$2;->bwa:Lcom/kingroot/kinguser/bjd;

    invoke-static {v1}, Lcom/kingroot/kinguser/bjd;->f(Lcom/kingroot/kinguser/bjd;)Lcom/kingroot/common/uilib/KBaseListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/common/uilib/KBaseListView;->getChildCount()I

    move-result v16

    .line 968
    if-nez v16, :cond_0

    .line 970
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingroot/kinguser/bjd$2$1;->bwe:Lcom/kingroot/kinguser/bjd$2;

    iget-object v1, v1, Lcom/kingroot/kinguser/bjd$2;->bwa:Lcom/kingroot/kinguser/bjd;

    invoke-static {v1}, Lcom/kingroot/kinguser/bjd;->b(Lcom/kingroot/kinguser/bjd;)V

    .line 971
    const/4 v1, 0x0

    .line 991
    :goto_0
    return v1

    .line 974
    :cond_0
    add-int/lit8 v17, v16, -0x1

    .line 975
    new-instance v7, Lcom/kingroot/kinguser/bjd$2$1$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/kingroot/kinguser/bjd$2$1$1;-><init>(Lcom/kingroot/kinguser/bjd$2$1;)V

    .line 982
    const/4 v1, 0x0

    move v15, v1

    :goto_1
    move/from16 v0, v16

    if-ge v15, v0, :cond_2

    .line 983
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingroot/kinguser/bjd$2$1;->bwe:Lcom/kingroot/kinguser/bjd$2;

    iget-object v1, v1, Lcom/kingroot/kinguser/bjd$2;->bwa:Lcom/kingroot/kinguser/bjd;

    invoke-static {v1}, Lcom/kingroot/kinguser/bjd;->f(Lcom/kingroot/kinguser/bjd;)Lcom/kingroot/common/uilib/KBaseListView;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/kingroot/common/uilib/KBaseListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 985
    move/from16 v0, v17

    if-ne v15, v0, :cond_1

    .line 986
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingroot/kinguser/bjd$2$1;->bwe:Lcom/kingroot/kinguser/bjd$2;

    iget-object v1, v1, Lcom/kingroot/kinguser/bjd$2;->bwa:Lcom/kingroot/kinguser/bjd;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/kingroot/kinguser/bjd$2$1;->bwd:I

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-static/range {v1 .. v7}, Lcom/kingroot/kinguser/bjd;->a(Lcom/kingroot/kinguser/bjd;Landroid/view/View;FFFFLjava/lang/Runnable;)V

    .line 982
    :goto_2
    add-int/lit8 v1, v15, 0x1

    move v15, v1

    goto :goto_1

    .line 988
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingroot/kinguser/bjd$2$1;->bwe:Lcom/kingroot/kinguser/bjd$2;

    iget-object v8, v1, Lcom/kingroot/kinguser/bjd$2;->bwa:Lcom/kingroot/kinguser/bjd;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/kingroot/kinguser/bjd$2$1;->bwd:I

    int-to-float v12, v1

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v2

    invoke-static/range {v8 .. v14}, Lcom/kingroot/kinguser/bjd;->a(Lcom/kingroot/kinguser/bjd;Landroid/view/View;FFFFLjava/lang/Runnable;)V

    goto :goto_2

    .line 991
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method
