.class public final Lcom/kingroot/kinguser/ws;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NK:I

.field public static final NL:I

.field private static final NM:I

.field private static final NN:I

.field private static final NP:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0a004c

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/kingroot/kinguser/ws;->NK:I

    .line 26
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0a0069

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/kingroot/kinguser/ws;->NL:I

    .line 27
    const/16 v0, 0x99

    const v1, 0x7f0e0124

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bgi;->getColor(II)I

    move-result v0

    sput v0, Lcom/kingroot/kinguser/ws;->NM:I

    .line 29
    const v0, 0x7f0e0031

    invoke-static {v0}, Lcom/kingroot/kinguser/bgi;->getColor(I)I

    move-result v0

    sput v0, Lcom/kingroot/kinguser/ws;->NN:I

    .line 31
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0a004d

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/kingroot/kinguser/ws;->NP:I

    .line 30
    return-void
.end method

.method public static a(Landroid/view/View;I)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/kingroot/kinguser/ws;->a(Landroid/view/View;IZ)V

    .line 62
    return-void
.end method

.method public static a(Landroid/view/View;II)V
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 106
    new-instance v0, Lcom/kingroot/common/uilib/ShadowProperty;

    invoke-direct {v0}, Lcom/kingroot/common/uilib/ShadowProperty;-><init>()V

    .line 108
    invoke-virtual {v0, p1}, Lcom/kingroot/common/uilib/ShadowProperty;->bO(I)Lcom/kingroot/common/uilib/ShadowProperty;

    move-result-object v0

    sget v1, Lcom/kingroot/kinguser/ws;->NK:I

    .line 109
    invoke-virtual {v0, v1}, Lcom/kingroot/common/uilib/ShadowProperty;->bP(I)Lcom/kingroot/common/uilib/ShadowProperty;

    move-result-object v0

    const/4 v1, 0x1

    .line 110
    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/kingroot/common/uilib/ShadowProperty;->a(ZZZZ)Lcom/kingroot/common/uilib/ShadowProperty;

    move-result-object v0

    .line 106
    invoke-static {v0, p0, p2}, Lcom/kingroot/kinguser/wv;->a(Lcom/kingroot/common/uilib/ShadowProperty;Landroid/view/View;I)Lcom/kingroot/kinguser/wv;

    .line 113
    return-void
.end method

.method public static a(Landroid/view/View;IZ)V
    .locals 6
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const v5, 0x7f020259

    const v4, 0x7f020257

    const v3, 0x7f020256

    const v2, 0x7f020255

    const v1, 0x7f020253

    .line 65
    if-eqz p2, :cond_0

    .line 66
    packed-switch p1, :pswitch_data_0

    .line 102
    :goto_0
    return-void

    .line 68
    :pswitch_0
    invoke-static {}, Lcom/kingroot/kinguser/xy;->ox()Lcom/kingroot/kinguser/xy;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/xy;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/kingroot/kinguser/wx;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 71
    :pswitch_1
    invoke-static {}, Lcom/kingroot/kinguser/xy;->ox()Lcom/kingroot/kinguser/xy;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/kingroot/kinguser/xy;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/kingroot/kinguser/wx;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 74
    :pswitch_2
    invoke-static {}, Lcom/kingroot/kinguser/xy;->ox()Lcom/kingroot/kinguser/xy;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/xy;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/kingroot/kinguser/wx;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 77
    :pswitch_3
    invoke-static {}, Lcom/kingroot/kinguser/xy;->ox()Lcom/kingroot/kinguser/xy;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/kingroot/kinguser/xy;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/kingroot/kinguser/wx;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 80
    :pswitch_4
    invoke-static {}, Lcom/kingroot/kinguser/xy;->ox()Lcom/kingroot/kinguser/xy;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/xy;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/kingroot/kinguser/wx;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 84
    :cond_0
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 86
    :pswitch_5
    invoke-virtual {p0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 89
    :pswitch_6
    invoke-virtual {p0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 92
    :pswitch_7
    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 95
    :pswitch_8
    invoke-virtual {p0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 98
    :pswitch_9
    invoke-virtual {p0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 84
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static a(Landroid/view/View;Landroid/view/View;I)V
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 116
    if-eqz p1, :cond_0

    .line 117
    const/16 v1, 0x3d

    .line 118
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 119
    if-le p2, v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 120
    :goto_0
    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const v1, 0x7f0e0014

    .line 121
    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bgi;->getColor(II)I

    move-result v0

    const v1, 0x7f0e010a

    .line 122
    invoke-static {v1}, Lcom/kingroot/kinguser/bgi;->getColor(I)I

    move-result v1

    .line 120
    invoke-static {p1, v0, v1}, Lcom/kingroot/kinguser/ws;->a(Landroid/view/View;II)V

    .line 124
    :cond_0
    return-void

    .line 119
    :cond_1
    int-to-float v2, p2

    int-to-float v0, v0

    div-float v0, v2, v0

    goto :goto_0
.end method

.method public static g(Landroid/view/View;)V
    .locals 2
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 53
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/kingroot/kinguser/ws;->a(Landroid/view/View;IZ)V

    .line 54
    return-void
.end method

.method public static h(Landroid/view/View;)V
    .locals 2
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 57
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/kingroot/kinguser/ws;->a(Landroid/view/View;IZ)V

    .line 58
    return-void
.end method
