.class public abstract Lcom/kingroot/kinguser/xi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$PageTransformer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/kingroot/kinguser/xl;)Lcom/kingroot/kinguser/xi;
    .locals 2

    .prologue
    .line 34
    sget-object v0, Lcom/kingroot/kinguser/xi$1;->TP:[I

    invoke-virtual {p0}, Lcom/kingroot/kinguser/xl;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 62
    new-instance v0, Lcom/kingroot/kinguser/xe;

    invoke-direct {v0}, Lcom/kingroot/kinguser/xe;-><init>()V

    :goto_0
    return-object v0

    .line 36
    :pswitch_0
    new-instance v0, Lcom/kingroot/kinguser/xe;

    invoke-direct {v0}, Lcom/kingroot/kinguser/xe;-><init>()V

    goto :goto_0

    .line 38
    :pswitch_1
    new-instance v0, Lcom/kingroot/kinguser/xc;

    invoke-direct {v0}, Lcom/kingroot/kinguser/xc;-><init>()V

    goto :goto_0

    .line 40
    :pswitch_2
    new-instance v0, Lcom/kingroot/kinguser/xj;

    invoke-direct {v0}, Lcom/kingroot/kinguser/xj;-><init>()V

    goto :goto_0

    .line 42
    :pswitch_3
    new-instance v0, Lcom/kingroot/kinguser/xd;

    invoke-direct {v0}, Lcom/kingroot/kinguser/xd;-><init>()V

    goto :goto_0

    .line 44
    :pswitch_4
    new-instance v0, Lcom/kingroot/kinguser/xh;

    invoke-direct {v0}, Lcom/kingroot/kinguser/xh;-><init>()V

    goto :goto_0

    .line 46
    :pswitch_5
    new-instance v0, Lcom/kingroot/kinguser/xb;

    invoke-direct {v0}, Lcom/kingroot/kinguser/xb;-><init>()V

    goto :goto_0

    .line 48
    :pswitch_6
    new-instance v0, Lcom/kingroot/kinguser/xn;

    invoke-direct {v0}, Lcom/kingroot/kinguser/xn;-><init>()V

    goto :goto_0

    .line 50
    :pswitch_7
    new-instance v0, Lcom/kingroot/kinguser/xg;

    invoke-direct {v0}, Lcom/kingroot/kinguser/xg;-><init>()V

    goto :goto_0

    .line 52
    :pswitch_8
    new-instance v0, Lcom/kingroot/kinguser/xm;

    invoke-direct {v0}, Lcom/kingroot/kinguser/xm;-><init>()V

    goto :goto_0

    .line 54
    :pswitch_9
    new-instance v0, Lcom/kingroot/kinguser/xp;

    invoke-direct {v0}, Lcom/kingroot/kinguser/xp;-><init>()V

    goto :goto_0

    .line 56
    :pswitch_a
    new-instance v0, Lcom/kingroot/kinguser/xk;

    invoke-direct {v0}, Lcom/kingroot/kinguser/xk;-><init>()V

    goto :goto_0

    .line 58
    :pswitch_b
    new-instance v0, Lcom/kingroot/kinguser/xf;

    invoke-direct {v0}, Lcom/kingroot/kinguser/xf;-><init>()V

    goto :goto_0

    .line 60
    :pswitch_c
    new-instance v0, Lcom/kingroot/kinguser/xo;

    invoke-direct {v0}, Lcom/kingroot/kinguser/xo;-><init>()V

    goto :goto_0

    .line 34
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method


# virtual methods
.method public abstract c(Landroid/view/View;F)V
.end method

.method public abstract d(Landroid/view/View;F)V
.end method

.method public abstract e(Landroid/view/View;F)V
.end method

.method public transformPage(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 9
    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/xi;->c(Landroid/view/View;F)V

    .line 25
    :goto_0
    return-void

    .line 13
    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_1

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/xi;->d(Landroid/view/View;F)V

    goto :goto_0

    .line 17
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_2

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/xi;->e(Landroid/view/View;F)V

    goto :goto_0

    .line 23
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/xi;->c(Landroid/view/View;F)V

    goto :goto_0
.end method
