.class Lcom/kingroot/kinguser/byc$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/byf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/byc;->d(ILandroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bTI:Lcom/kingroot/kinguser/byc;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/byc;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/kingroot/kinguser/byc$2;->bTI:Lcom/kingroot/kinguser/byc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 62
    iget-object v0, p0, Lcom/kingroot/kinguser/byc$2;->bTI:Lcom/kingroot/kinguser/byc;

    invoke-static {v0}, Lcom/kingroot/kinguser/byc;->a(Lcom/kingroot/kinguser/byc;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/kingroot/kinguser/bye;

    .line 63
    if-nez v10, :cond_0

    .line 135
    :goto_0
    return v1

    .line 67
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 70
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v10, v2, v3}, Lcom/kingroot/kinguser/bye;->cM(J)V

    .line 72
    new-instance v0, Lcom/kingroot/kinguser/byb;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    .line 73
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPressure()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSize()F

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/byb;-><init>(IFFFF)V

    .line 74
    invoke-virtual {v10}, Lcom/kingroot/kinguser/bye;->ajV()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 85
    :pswitch_1
    invoke-virtual {v10}, Lcom/kingroot/kinguser/bye;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    new-instance v2, Lcom/kingroot/kinguser/byb;

    const/4 v3, 0x2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    .line 87
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPressure()F

    move-result v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSize()F

    move-result v7

    invoke-direct/range {v2 .. v7}, Lcom/kingroot/kinguser/byb;-><init>(IFFFF)V

    .line 98
    :goto_1
    invoke-virtual {v10}, Lcom/kingroot/kinguser/bye;->ajV()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 91
    :cond_1
    new-instance v0, Lcom/kingroot/kinguser/byb;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    .line 92
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPressure()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSize()F

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/byb;-><init>(IFFFF)V

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v10, v2, v3}, Lcom/kingroot/kinguser/bye;->cM(J)V

    move-object v2, v0

    goto :goto_1

    .line 106
    :pswitch_2
    invoke-virtual {v10}, Lcom/kingroot/kinguser/bye;->ajU()J

    move-result-wide v2

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 108
    invoke-virtual {v10, v2, v3}, Lcom/kingroot/kinguser/bye;->setDuration(J)V

    .line 110
    new-instance v2, Lcom/kingroot/kinguser/byb;

    const/4 v3, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    .line 111
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPressure()F

    move-result v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSize()F

    move-result v7

    invoke-direct/range {v2 .. v7}, Lcom/kingroot/kinguser/byb;-><init>(IFFFF)V

    .line 112
    invoke-virtual {v10}, Lcom/kingroot/kinguser/bye;->ajV()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-virtual {v10}, Lcom/kingroot/kinguser/bye;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    new-instance v9, Ljava/util/ArrayList;

    invoke-virtual {v10}, Lcom/kingroot/kinguser/bye;->ajV()Ljava/util/List;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 117
    iget-object v2, p0, Lcom/kingroot/kinguser/byc$2;->bTI:Lcom/kingroot/kinguser/byc;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v10}, Lcom/kingroot/kinguser/bye;->ajU()J

    move-result-wide v4

    .line 118
    invoke-virtual {v10}, Lcom/kingroot/kinguser/bye;->getDuration()J

    move-result-wide v6

    invoke-virtual {v10}, Lcom/kingroot/kinguser/bye;->ajW()I

    move-result v8

    .line 117
    invoke-static/range {v2 .. v9}, Lcom/kingroot/kinguser/byc;->a(Lcom/kingroot/kinguser/byc;Landroid/content/Context;JJILjava/util/List;)V

    .line 121
    :cond_2
    invoke-virtual {v10}, Lcom/kingroot/kinguser/bye;->reset()V

    goto/16 :goto_0

    .line 129
    :pswitch_3
    invoke-virtual {v10}, Lcom/kingroot/kinguser/bye;->reset()V

    goto/16 :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
