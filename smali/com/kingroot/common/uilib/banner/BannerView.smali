.class public Lcom/kingroot/common/uilib/banner/BannerView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Lcom/kingroot/common/uilib/banner/BannerViewPager$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/common/uilib/banner/BannerView$d;,
        Lcom/kingroot/common/uilib/banner/BannerView$a;,
        Lcom/kingroot/common/uilib/banner/BannerView$c;,
        Lcom/kingroot/common/uilib/banner/BannerView$b;,
        Lcom/kingroot/common/uilib/banner/BannerView$e;
    }
.end annotation


# static fields
.field private static final TD:[Landroid/widget/ImageView$ScaleType;


# instance fields
.field private SO:Lcom/kingroot/common/uilib/banner/BannerViewPager;

.field private SQ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private SR:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private SS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ST:Landroid/widget/LinearLayout;

.field private SU:Landroid/widget/TextView;

.field private SV:Z

.field private SW:I

.field private SX:I

.field private SY:I

.field private SZ:I

.field private TA:Lcom/kingroot/common/uilib/banner/BannerView$d;

.field private TB:I

.field private TC:Z

.field private TE:Lcom/kingroot/kinguser/xa;

.field private TF:Z

.field private Ta:I

.field private Tb:I

.field private Tc:I

.field private Td:I

.field private Te:I

.field private Tf:Landroid/graphics/drawable/Drawable;

.field private Tg:Lcom/kingroot/common/uilib/banner/BannerView$b;

.field private Th:I

.field private Ti:F

.field private Tj:Lcom/kingroot/kinguser/xl;

.field private Tk:Landroid/widget/ImageView;

.field private Tl:Landroid/widget/ImageView$ScaleType;

.field private Tm:I

.field private Tn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private To:Lcom/kingroot/common/uilib/banner/BannerView$c;

.field private Tp:Lcom/kingroot/common/uilib/banner/BannerView$a;

.field private Tq:I

.field private Tr:Z

.field private Ts:Landroid/widget/TextView;

.field private Tt:I

.field private Tu:I

.field private Tv:Landroid/graphics/drawable/Drawable;

.field private Tw:Z

.field private Tx:Z

.field private Ty:Landroid/view/View;

.field private Tz:Landroid/view/View;

.field private mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 86
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/widget/ImageView$ScaleType;

    const/4 v1, 0x0

    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingroot/common/uilib/banner/BannerView;->TD:[Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/kingroot/common/uilib/banner/BannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 112
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    iput-boolean v2, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SV:Z

    .line 51
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SW:I

    .line 52
    const/16 v0, 0x320

    iput v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SX:I

    .line 53
    const/16 v0, 0x51

    iput v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SY:I

    .line 58
    iput v1, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Td:I

    .line 59
    const v0, 0x7f0200a3

    iput v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Te:I

    .line 66
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tl:Landroid/widget/ImageView$ScaleType;

    .line 67
    iput v1, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tm:I

    .line 71
    const/4 v0, 0x2

    iput v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tq:I

    .line 73
    iput-boolean v3, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tr:Z

    .line 75
    iput v1, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tt:I

    .line 79
    iput-boolean v2, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tx:Z

    .line 84
    iput-boolean v2, p0, Lcom/kingroot/common/uilib/banner/BannerView;->TC:Z

    .line 97
    new-instance v0, Lcom/kingroot/common/uilib/banner/BannerView$1;

    invoke-direct {v0, p0}, Lcom/kingroot/common/uilib/banner/BannerView$1;-><init>(Lcom/kingroot/common/uilib/banner/BannerView;)V

    iput-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->TE:Lcom/kingroot/kinguser/xa;

    .line 105
    iput-boolean v3, p0, Lcom/kingroot/common/uilib/banner/BannerView;->TF:Z

    .line 113
    invoke-direct {p0, p1}, Lcom/kingroot/common/uilib/banner/BannerView;->Y(Landroid/content/Context;)V

    .line 114
    invoke-direct {p0, p1, p2}, Lcom/kingroot/common/uilib/banner/BannerView;->f(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    invoke-direct {p0, p1}, Lcom/kingroot/common/uilib/banner/BannerView;->G(Landroid/content/Context;)V

    .line 116
    return-void
.end method

.method private G(Landroid/content/Context;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x2

    const v7, 0x7f0f0003

    const/16 v6, 0x10

    const/4 v5, 0x0

    .line 190
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 191
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v6, :cond_1

    .line 192
    iget-object v1, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tf:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 196
    :goto_0
    iget v1, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tb:I

    iget v2, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Ta:I

    iget v3, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tb:I

    iget v4, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Ta:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 197
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 199
    iget v2, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SY:I

    and-int/lit8 v2, v2, 0x70

    const/16 v3, 0x30

    if-ne v2, v3, :cond_2

    .line 200
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 204
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/kingroot/common/uilib/banner/BannerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 208
    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 209
    iget-boolean v2, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tr:Z

    if-eqz v2, :cond_4

    .line 210
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Ts:Landroid/widget/TextView;

    .line 211
    iget-object v2, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Ts:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setId(I)V

    .line 212
    iget-object v2, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Ts:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 213
    iget-object v2, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Ts:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 214
    iget-object v2, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Ts:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 215
    iget-object v2, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Ts:Landroid/widget/TextView;

    iget v3, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tt:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 216
    iget-object v2, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Ts:Landroid/widget/TextView;

    iget v3, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tu:I

    int-to-float v3, v3

    invoke-virtual {v2, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 217
    iget-object v2, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Ts:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 218
    iget-object v2, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tv:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 219
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v6, :cond_3

    .line 220
    iget-object v2, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Ts:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tv:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 225
    :cond_0
    :goto_2
    iget-object v2, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Ts:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    :goto_3
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 235
    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 236
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SU:Landroid/widget/TextView;

    .line 237
    iget-object v3, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SU:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 238
    iget-object v3, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SU:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 239
    iget-object v3, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SU:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 240
    iget-object v3, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SU:Landroid/widget/TextView;

    iget v4, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Td:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 241
    iget-object v3, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SU:Landroid/widget/TextView;

    iget v4, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tc:I

    int-to-float v4, v4

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 242
    iget-object v3, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SU:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    iget v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SY:I

    and-int/lit8 v0, v0, 0x7

    .line 246
    const/4 v3, 0x3

    if-ne v0, v3, :cond_5

    .line 247
    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 248
    invoke-virtual {v2, v9, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 249
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SU:Landroid/widget/TextView;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 258
    :goto_4
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/banner/BannerView;->oo()V

    .line 259
    return-void

    .line 194
    :cond_1
    iget-object v1, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tf:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 202
    :cond_2
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_1

    .line 222
    :cond_3
    iget-object v2, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Ts:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tv:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 227
    :cond_4
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/kingroot/common/uilib/banner/BannerView;->ST:Landroid/widget/LinearLayout;

    .line 228
    iget-object v2, p0, Lcom/kingroot/common/uilib/banner/BannerView;->ST:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setId(I)V

    .line 229
    iget-object v2, p0, Lcom/kingroot/common/uilib/banner/BannerView;->ST:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 230
    iget-object v2, p0, Lcom/kingroot/common/uilib/banner/BannerView;->ST:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 231
    iget-object v2, p0, Lcom/kingroot/common/uilib/banner/BannerView;->ST:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    .line 250
    :cond_5
    const/4 v3, 0x5

    if-ne v0, v3, :cond_6

    .line 251
    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 252
    invoke-virtual {v2, v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_4

    .line 254
    :cond_6
    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 255
    invoke-virtual {v2, v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_4
.end method

.method private Y(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/high16 v2, 0x41200000    # 10.0f

    .line 119
    new-instance v0, Lcom/kingroot/common/uilib/banner/BannerView$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kingroot/common/uilib/banner/BannerView$b;-><init>(Lcom/kingroot/common/uilib/banner/BannerView;Lcom/kingroot/common/uilib/banner/BannerView$1;)V

    iput-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tg:Lcom/kingroot/common/uilib/banner/BannerView$b;

    .line 121
    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {p1, v0}, Lcom/kingroot/kinguser/wz;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SZ:I

    .line 122
    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {p1, v0}, Lcom/kingroot/kinguser/wz;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Ta:I

    .line 123
    invoke-static {p1, v2}, Lcom/kingroot/kinguser/wz;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tb:I

    .line 124
    invoke-static {p1, v2}, Lcom/kingroot/kinguser/wz;->b(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tc:I

    .line 125
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const-string v1, "#44aaaaaa"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tf:Landroid/graphics/drawable/Drawable;

    .line 126
    sget-object v0, Lcom/kingroot/kinguser/xl;->TQ:Lcom/kingroot/kinguser/xl;

    iput-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tj:Lcom/kingroot/kinguser/xl;

    .line 127
    invoke-static {p1, v2}, Lcom/kingroot/kinguser/wz;->b(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tu:I

    .line 129
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->TB:I

    .line 130
    return-void
.end method

.method static synthetic a(Lcom/kingroot/common/uilib/banner/BannerView;)Lcom/kingroot/common/uilib/banner/BannerView$d;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->TA:Lcom/kingroot/common/uilib/banner/BannerView$d;

    return-object v0
.end method

.method private a(ILandroid/content/res/TypedArray;)V
    .locals 2

    .prologue
    .line 142
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 143
    const v0, 0x7f0200a3

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Te:I

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 145
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tf:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 146
    :cond_2
    const/4 v0, 0x5

    if-ne p1, v0, :cond_3

    .line 147
    iget v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SZ:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SZ:I

    goto :goto_0

    .line 148
    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 149
    iget v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tb:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tb:I

    goto :goto_0

    .line 150
    :cond_4
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    .line 151
    iget v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Ta:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Ta:I

    goto :goto_0

    .line 152
    :cond_5
    const/4 v0, 0x6

    if-ne p1, v0, :cond_6

    .line 153
    iget v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SY:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SY:I

    goto :goto_0

    .line 154
    :cond_6
    const/4 v0, 0x7

    if-ne p1, v0, :cond_7

    .line 155
    iget-boolean v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SV:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SV:Z

    goto :goto_0

    .line 156
    :cond_7
    const/16 v0, 0x8

    if-ne p1, v0, :cond_8

    .line 157
    iget v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SW:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SW:I

    goto :goto_0

    .line 158
    :cond_8
    const/16 v0, 0x9

    if-ne p1, v0, :cond_9

    .line 159
    iget v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SX:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SX:I

    goto :goto_0

    .line 160
    :cond_9
    const/16 v0, 0xa

    if-ne p1, v0, :cond_a

    .line 161
    sget-object v0, Lcom/kingroot/kinguser/xl;->TV:Lcom/kingroot/kinguser/xl;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/xl;->ordinal()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 162
    invoke-static {}, Lcom/kingroot/kinguser/xl;->values()[Lcom/kingroot/kinguser/xl;

    move-result-object v1

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tj:Lcom/kingroot/kinguser/xl;

    goto :goto_0

    .line 163
    :cond_a
    const/16 v0, 0xb

    if-ne p1, v0, :cond_b

    .line 164
    iget v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Td:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Td:I

    goto/16 :goto_0

    .line 165
    :cond_b
    const/16 v0, 0xc

    if-ne p1, v0, :cond_c

    .line 166
    iget v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tc:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tc:I

    goto/16 :goto_0

    .line 167
    :cond_c
    const/16 v0, 0xd

    if-ne p1, v0, :cond_d

    .line 168
    iget v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tm:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tm:I

    goto/16 :goto_0

    .line 169
    :cond_d
    const/16 v0, 0xe

    if-ne p1, v0, :cond_e

    .line 170
    iget-boolean v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tr:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tr:Z

    goto/16 :goto_0

    .line 171
    :cond_e
    const/16 v0, 0xf

    if-ne p1, v0, :cond_f

    .line 172
    iget v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tt:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tt:I

    goto/16 :goto_0

    .line 173
    :cond_f
    const/16 v0, 0x10

    if-ne p1, v0, :cond_10

    .line 174
    iget v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tu:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tu:I

    goto/16 :goto_0

    .line 175
    :cond_10
    const/16 v0, 0x11

    if-ne p1, v0, :cond_11

    .line 176
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tv:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 177
    :cond_11
    const/16 v0, 0x12

    if-ne p1, v0, :cond_12

    .line 178
    iget-boolean v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tw:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tw:Z

    goto/16 :goto_0

    .line 179
    :cond_12
    const/16 v0, 0x13

    if-ne p1, v0, :cond_13

    .line 180
    iget v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->TB:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->TB:I

    goto/16 :goto_0

    .line 181
    :cond_13
    if-nez p1, :cond_0

    .line 182
    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 183
    if-ltz v0, :cond_0

    sget-object v1, Lcom/kingroot/common/uilib/banner/BannerView;->TD:[Landroid/widget/ImageView$ScaleType;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 184
    sget-object v1, Lcom/kingroot/common/uilib/banner/BannerView;->TD:[Landroid/widget/ImageView$ScaleType;

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tl:Landroid/widget/ImageView$ScaleType;

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/kingroot/common/uilib/banner/BannerView;)Lcom/kingroot/common/uilib/banner/BannerViewPager;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SO:Lcom/kingroot/common/uilib/banner/BannerViewPager;

    return-object v0
.end method

.method private bS(I)V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 743
    iget-boolean v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->TF:Z

    if-eqz v0, :cond_0

    .line 744
    rem-int/lit8 p1, p1, 0x2

    .line 746
    :cond_0
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SU:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 747
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SS:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v4, :cond_1

    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_5

    .line 748
    :cond_1
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SU:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 755
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SR:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 756
    iget-boolean v1, p0, Lcom/kingroot/common/uilib/banner/BannerView;->TF:Z

    if-eqz v1, :cond_3

    .line 757
    div-int/lit8 v0, v0, 0x2

    .line 759
    :cond_3
    iget-object v1, p0, Lcom/kingroot/common/uilib/banner/BannerView;->ST:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_8

    .line 760
    iget-object v1, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SR:Ljava/util/List;

    if-eqz v1, :cond_7

    if-lez v0, :cond_7

    if-ge p1, v0, :cond_7

    iget-boolean v1, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tw:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tw:Z

    if-nez v1, :cond_7

    if-le v0, v4, :cond_7

    .line 761
    :cond_4
    iget-object v1, p0, Lcom/kingroot/common/uilib/banner/BannerView;->ST:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move v1, v2

    .line 762
    :goto_1
    iget-object v3, p0, Lcom/kingroot/common/uilib/banner/BannerView;->ST:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_8

    .line 763
    iget-object v3, p0, Lcom/kingroot/common/uilib/banner/BannerView;->ST:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-ne v1, p1, :cond_6

    move v3, v4

    :goto_2
    invoke-virtual {v5, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 765
    iget-object v3, p0, Lcom/kingroot/common/uilib/banner/BannerView;->ST:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    .line 762
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 750
    :cond_5
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SU:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 751
    iget-object v1, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SU:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    move v3, v2

    .line 763
    goto :goto_2

    .line 768
    :cond_7
    iget-object v1, p0, Lcom/kingroot/common/uilib/banner/BannerView;->ST:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 772
    :cond_8
    iget-object v1, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Ts:Landroid/widget/TextView;

    if-eqz v1, :cond_a

    .line 773
    iget-object v1, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SR:Ljava/util/List;

    if-eqz v1, :cond_b

    if-lez v0, :cond_b

    if-ge p1, v0, :cond_b

    iget-boolean v1, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tw:Z

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tw:Z

    if-nez v1, :cond_b

    if-le v0, v4, :cond_b

    .line 774
    :cond_9
    iget-object v1, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Ts:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 775
    iget-object v1, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Ts:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 780
    :cond_a
    :goto_3
    return-void

    .line 777
    :cond_b
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Ts:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method static synthetic c(Lcom/kingroot/common/uilib/banner/BannerView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tz:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/kingroot/common/uilib/banner/BannerView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Ty:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/kingroot/common/uilib/banner/BannerView;)Ljava/util/List;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SR:Ljava/util/List;

    return-object v0
.end method

.method private f(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    .line 133
    sget-object v0, Lcom/kingroot/kinguser/afs$a;->BannerView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 134
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 135
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 136
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    invoke-direct {p0, v3, v1}, Lcom/kingroot/common/uilib/banner/BannerView;->a(ILandroid/content/res/TypedArray;)V

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 139
    return-void
.end method

.method static synthetic f(Lcom/kingroot/common/uilib/banner/BannerView;)Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SV:Z

    return v0
.end method

.method static synthetic g(Lcom/kingroot/common/uilib/banner/BannerView;)Ljava/util/List;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SQ:Ljava/util/List;

    return-object v0
.end method

.method static synthetic h(Lcom/kingroot/common/uilib/banner/BannerView;)Lcom/kingroot/common/uilib/banner/BannerView$c;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->To:Lcom/kingroot/common/uilib/banner/BannerView$c;

    return-object v0
.end method

.method static synthetic i(Lcom/kingroot/common/uilib/banner/BannerView;)Ljava/util/List;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tn:Ljava/util/List;

    return-object v0
.end method

.method private initViewPager()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const v5, 0x3fffffff    # 1.9999999f

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 535
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SO:Lcom/kingroot/common/uilib/banner/BannerViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SO:Lcom/kingroot/common/uilib/banner/BannerViewPager;

    invoke-virtual {v0}, Lcom/kingroot/common/uilib/banner/BannerViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SO:Lcom/kingroot/common/uilib/banner/BannerViewPager;

    invoke-virtual {p0, v0}, Lcom/kingroot/common/uilib/banner/BannerView;->removeView(Landroid/view/View;)V

    .line 537
    iput-object v6, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SO:Lcom/kingroot/common/uilib/banner/BannerViewPager;

    .line 540
    :cond_0
    new-instance v0, Lcom/kingroot/common/uilib/banner/BannerViewPager;

    invoke-virtual {p0}, Lcom/kingroot/common/uilib/banner/BannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/common/uilib/banner/BannerViewPager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SO:Lcom/kingroot/common/uilib/banner/BannerViewPager;

    .line 541
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SO:Lcom/kingroot/common/uilib/banner/BannerViewPager;

    invoke-virtual {v0, v4}, Lcom/kingroot/common/uilib/banner/BannerViewPager;->setOffscreenPageLimit(I)V

    .line 542
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SO:Lcom/kingroot/common/uilib/banner/BannerViewPager;

    new-instance v1, Lcom/kingroot/common/uilib/banner/BannerView$e;

    invoke-direct {v1, p0, v6}, Lcom/kingroot/common/uilib/banner/BannerView$e;-><init>(Lcom/kingroot/common/uilib/banner/BannerView;Lcom/kingroot/common/uilib/banner/BannerView$1;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/common/uilib/banner/BannerViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 543
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SO:Lcom/kingroot/common/uilib/banner/BannerViewPager;

    invoke-virtual {v0, p0}, Lcom/kingroot/common/uilib/banner/BannerViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 544
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SO:Lcom/kingroot/common/uilib/banner/BannerViewPager;

    iget v1, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tq:I

    invoke-virtual {v0, v1}, Lcom/kingroot/common/uilib/banner/BannerViewPager;->setOverScrollMode(I)V

    .line 545
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SO:Lcom/kingroot/common/uilib/banner/BannerViewPager;

    iget-boolean v1, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tx:Z

    invoke-virtual {v0, v1}, Lcom/kingroot/common/uilib/banner/BannerViewPager;->setAllowUserScrollable(Z)V

    .line 546
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SO:Lcom/kingroot/common/uilib/banner/BannerViewPager;

    iget-object v1, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tj:Lcom/kingroot/kinguser/xl;

    invoke-static {v1}, Lcom/kingroot/kinguser/xi;->a(Lcom/kingroot/kinguser/xl;)Lcom/kingroot/kinguser/xi;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/kingroot/common/uilib/banner/BannerViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V

    .line 547
    iget v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SX:I

    invoke-virtual {p0, v0}, Lcom/kingroot/common/uilib/banner/BannerView;->setPageChangeDuration(I)V

    .line 549
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 550
    iget v1, p0, Lcom/kingroot/common/uilib/banner/BannerView;->TB:I

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 551
    iget-object v1, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SO:Lcom/kingroot/common/uilib/banner/BannerViewPager;

    invoke-virtual {p0, v1, v2, v0}, Lcom/kingroot/common/uilib/banner/BannerView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 556
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/banner/BannerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/kingroot/common/uilib/banner/BannerView$2;

    invoke-direct {v1, p0}, Lcom/kingroot/common/uilib/banner/BannerView$2;-><init>(Lcom/kingroot/common/uilib/banner/BannerView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 568
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tz:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Ty:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 569
    :cond_1
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SO:Lcom/kingroot/common/uilib/banner/BannerViewPager;

    new-instance v1, Lcom/kingroot/common/uilib/banner/BannerView$3;

    invoke-direct {v1, p0}, Lcom/kingroot/common/uilib/banner/BannerView$3;-><init>(Lcom/kingroot/common/uilib/banner/BannerView;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/common/uilib/banner/BannerViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 616
    :cond_2
    iget-boolean v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SV:Z

    if-eqz v0, :cond_3

    .line 617
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SO:Lcom/kingroot/common/uilib/banner/BannerViewPager;

    invoke-virtual {v0, p0}, Lcom/kingroot/common/uilib/banner/BannerViewPager;->setAutoPlayDelegate(Lcom/kingroot/common/uilib/banner/BannerViewPager$a;)V

    .line 619
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SR:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int v0, v5, v0

    sub-int v0, v5, v0

    .line 620
    iget-object v1, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SO:Lcom/kingroot/common/uilib/banner/BannerViewPager;

    invoke-virtual {v1, v0}, Lcom/kingroot/common/uilib/banner/BannerViewPager;->setCurrentItem(I)V

    .line 622
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/banner/BannerView;->os()V

    .line 626
    :goto_0
    return-void

    .line 624
    :cond_3
    invoke-direct {p0, v2}, Lcom/kingroot/common/uilib/banner/BannerView;->bS(I)V

    goto :goto_0
.end method

.method static synthetic j(Lcom/kingroot/common/uilib/banner/BannerView;)Lcom/kingroot/common/uilib/banner/BannerView$a;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tp:Lcom/kingroot/common/uilib/banner/BannerView$a;

    return-object v0
.end method

.method static synthetic k(Lcom/kingroot/common/uilib/banner/BannerView;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/kingroot/common/uilib/banner/BannerView;->ou()V

    return-void
.end method

.method private op()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x2

    const/4 v1, 0x1

    .line 506
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->ST:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 507
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->ST:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 509
    iget-boolean v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tw:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tw:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SR:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 510
    :cond_0
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 511
    iget v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SZ:I

    iget v2, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Ta:I

    iget v5, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SZ:I

    iget v6, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Ta:I

    invoke-virtual {v4, v0, v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 514
    iget-boolean v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->TF:Z

    if-eqz v0, :cond_5

    .line 515
    const/4 v0, 0x2

    :goto_0
    move v2, v3

    .line 517
    :goto_1
    iget-object v5, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SR:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    div-int/2addr v5, v0

    if-ge v2, v5, :cond_1

    .line 518
    new-instance v5, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/kingroot/common/uilib/banner/BannerView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 519
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 520
    iget v6, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Te:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 521
    iget-object v6, p0, Lcom/kingroot/common/uilib/banner/BannerView;->ST:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 517
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 525
    :cond_1
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Ts:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 526
    iget-boolean v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tw:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tw:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SR:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_4

    .line 527
    :cond_2
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Ts:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 532
    :cond_3
    :goto_2
    return-void

    .line 529
    :cond_4
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Ts:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method private or()V
    .locals 1

    .prologue
    .line 708
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/banner/BannerView;->ot()V

    .line 714
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->TC:Z

    .line 715
    return-void
.end method

.method private ou()V
    .locals 2

    .prologue
    .line 814
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SO:Lcom/kingroot/common/uilib/banner/BannerViewPager;

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SO:Lcom/kingroot/common/uilib/banner/BannerViewPager;

    iget-object v1, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SO:Lcom/kingroot/common/uilib/banner/BannerViewPager;

    invoke-virtual {v1}, Lcom/kingroot/common/uilib/banner/BannerViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/common/uilib/banner/BannerViewPager;->setCurrentItem(I)V

    .line 817
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 320
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 321
    :cond_0
    iput-boolean v2, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SV:Z

    .line 322
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 323
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 324
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 326
    :cond_1
    iget-boolean v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SV:Z

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SQ:Ljava/util/List;

    if-nez v0, :cond_2

    .line 327
    iput-boolean v2, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SV:Z

    .line 329
    :cond_2
    iput-object p2, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tn:Ljava/util/List;

    .line 330
    iput-object p1, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SR:Ljava/util/List;

    .line 331
    iput-object p3, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SS:Ljava/util/List;

    .line 333
    invoke-direct {p0}, Lcom/kingroot/common/uilib/banner/BannerView;->op()V

    .line 334
    invoke-direct {p0}, Lcom/kingroot/common/uilib/banner/BannerView;->initViewPager()V

    .line 335
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/banner/BannerView;->oq()V

    .line 336
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 637
    iget-boolean v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SV:Z

    if-eqz v0, :cond_0

    .line 638
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 648
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 640
    :pswitch_1
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/banner/BannerView;->ot()V

    goto :goto_0

    .line 644
    :pswitch_2
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/banner/BannerView;->os()V

    goto :goto_0

    .line 638
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getCurrentItem()I
    .locals 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SO:Lcom/kingroot/common/uilib/banner/BannerViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SR:Ljava/util/List;

    if-nez v0, :cond_1

    .line 463
    :cond_0
    const/4 v0, 0x0

    .line 465
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SO:Lcom/kingroot/common/uilib/banner/BannerViewPager;

    invoke-virtual {v0}, Lcom/kingroot/common/uilib/banner/BannerViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SR:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SR:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SR:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getTips()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 491
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SS:Ljava/util/List;

    return-object v0
.end method

.method public getViewPager()Lcom/kingroot/common/uilib/banner/BannerViewPager;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SO:Lcom/kingroot/common/uilib/banner/BannerViewPager;

    return-object v0
.end method

.method public getViews()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 479
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SR:Ljava/util/List;

    return-object v0
.end method

.method public o(F)V
    .locals 5

    .prologue
    const/high16 v4, 0x43c80000    # 400.0f

    const/high16 v3, -0x3c380000    # -400.0f

    const/4 v2, 0x1

    .line 821
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SO:Lcom/kingroot/common/uilib/banner/BannerViewPager;

    if-eqz v0, :cond_1

    .line 822
    iget v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Th:I

    iget-object v1, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SO:Lcom/kingroot/common/uilib/banner/BannerViewPager;

    invoke-virtual {v1}, Lcom/kingroot/common/uilib/banner/BannerViewPager;->getCurrentItem()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 824
    cmpl-float v0, p1, v4

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Ti:F

    const v1, 0x3f333333    # 0.7f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    cmpl-float v0, p1, v3

    if-lez v0, :cond_2

    .line 825
    :cond_0
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SO:Lcom/kingroot/common/uilib/banner/BannerViewPager;

    iget v1, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Th:I

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/common/uilib/banner/BannerViewPager;->m(IZ)V

    .line 838
    :cond_1
    :goto_0
    return-void

    .line 827
    :cond_2
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SO:Lcom/kingroot/common/uilib/banner/BannerViewPager;

    iget v1, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Th:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/common/uilib/banner/BannerViewPager;->m(IZ)V

    goto :goto_0

    .line 831
    :cond_3
    cmpg-float v0, p1, v3

    if-ltz v0, :cond_4

    iget v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Ti:F

    const v1, 0x3e99999a    # 0.3f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    cmpg-float v0, p1, v4

    if-gez v0, :cond_5

    .line 832
    :cond_4
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SO:Lcom/kingroot/common/uilib/banner/BannerViewPager;

    iget v1, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Th:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/common/uilib/banner/BannerViewPager;->m(IZ)V

    goto :goto_0

    .line 834
    :cond_5
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SO:Lcom/kingroot/common/uilib/banner/BannerViewPager;

    iget v1, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Th:I

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/common/uilib/banner/BannerViewPager;->m(IZ)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 725
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 726
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/banner/BannerView;->os()V

    .line 727
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 719
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 720
    invoke-direct {p0}, Lcom/kingroot/common/uilib/banner/BannerView;->or()V

    .line 721
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    .prologue
    .line 882
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 883
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 885
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 6

    .prologue
    .line 852
    iput p1, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Th:I

    .line 853
    iput p2, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Ti:F

    .line 855
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SU:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 856
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SS:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 857
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SU:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 859
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int v0, p1, v0

    .line 860
    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v1, v2

    .line 861
    iget-object v2, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 862
    float-to-double v2, p2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double v2, v2, v4

    if-lez v2, :cond_2

    .line 863
    iget-object v2, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SU:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SS:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 864
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SU:Landroid/widget/TextView;

    invoke-static {v0, p2}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 875
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 876
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    iget-object v1, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SR:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int v1, p1, v1

    invoke-interface {v0, v1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 878
    :cond_1
    return-void

    .line 866
    :cond_2
    iget-object v1, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SU:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p2

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 867
    iget-object v1, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SU:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SS:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 871
    :cond_3
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SU:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onPageSelected(I)V
    .locals 2

    .prologue
    .line 842
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SR:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int v0, p1, v0

    .line 843
    invoke-direct {p0, v0}, Lcom/kingroot/common/uilib/banner/BannerView;->bS(I)V

    .line 845
    iget-object v1, p0, Lcom/kingroot/common/uilib/banner/BannerView;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v1, :cond_0

    .line 846
    iget-object v1, p0, Lcom/kingroot/common/uilib/banner/BannerView;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v1, v0}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 848
    :cond_0
    return-void
.end method

.method public onScreenStateChanged(I)V
    .locals 1

    .prologue
    .line 699
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onScreenStateChanged(I)V

    .line 700
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 701
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/banner/BannerView;->os()V

    .line 705
    :goto_0
    return-void

    .line 703
    :cond_0
    invoke-direct {p0}, Lcom/kingroot/common/uilib/banner/BannerView;->or()V

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 689
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 690
    if-nez p2, :cond_1

    .line 691
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/banner/BannerView;->os()V

    .line 695
    :cond_0
    :goto_0
    return-void

    .line 692
    :cond_1
    const/4 v0, 0x4

    if-eq p2, v0, :cond_2

    const/16 v0, 0x8

    if-ne p2, v0, :cond_0

    .line 693
    :cond_2
    invoke-direct {p0}, Lcom/kingroot/common/uilib/banner/BannerView;->or()V

    goto :goto_0
.end method

.method public oo()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 262
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tk:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tm:I

    if-eq v0, v2, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/banner/BannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tm:I

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/wz;->c(Landroid/content/Context;I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tk:Landroid/widget/ImageView;

    .line 264
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tk:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tl:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 265
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 266
    iget v1, p0, Lcom/kingroot/common/uilib/banner/BannerView;->TB:I

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 267
    iget-object v1, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tk:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/kingroot/common/uilib/banner/BannerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 269
    :cond_0
    return-void
.end method

.method public oq()V
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tk:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tk:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tk:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/kingroot/common/uilib/banner/BannerView;->removeView(Landroid/view/View;)V

    .line 631
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tk:Landroid/widget/ImageView;

    .line 633
    :cond_0
    return-void
.end method

.method public os()V
    .locals 4

    .prologue
    .line 730
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/banner/BannerView;->ot()V

    .line 731
    iget-boolean v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SV:Z

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tg:Lcom/kingroot/common/uilib/banner/BannerView$b;

    iget v1, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SW:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/kingroot/common/uilib/banner/BannerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 734
    :cond_0
    return-void
.end method

.method public ot()V
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tg:Lcom/kingroot/common/uilib/banner/BannerView$b;

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tg:Lcom/kingroot/common/uilib/banner/BannerView$b;

    invoke-virtual {p0, v0}, Lcom/kingroot/common/uilib/banner/BannerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 740
    :cond_0
    return-void
.end method

.method public setAdapter(Lcom/kingroot/common/uilib/banner/BannerView$a;)V
    .locals 0

    .prologue
    .line 892
    iput-object p1, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tp:Lcom/kingroot/common/uilib/banner/BannerView$a;

    .line 893
    return-void
.end method

.method public setAllowUserScrollable(Z)V
    .locals 2

    .prologue
    .line 402
    iput-boolean p1, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tx:Z

    .line 403
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SO:Lcom/kingroot/common/uilib/banner/BannerViewPager;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SO:Lcom/kingroot/common/uilib/banner/BannerViewPager;

    iget-boolean v1, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tx:Z

    invoke-virtual {v0, v1}, Lcom/kingroot/common/uilib/banner/BannerViewPager;->setAllowUserScrollable(Z)V

    .line 406
    :cond_0
    return-void
.end method

.method public setAutoPlayAble(Z)V
    .locals 1

    .prologue
    .line 294
    iput-boolean p1, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SV:Z

    .line 296
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/banner/BannerView;->ot()V

    .line 298
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SO:Lcom/kingroot/common/uilib/banner/BannerViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SO:Lcom/kingroot/common/uilib/banner/BannerViewPager;

    invoke-virtual {v0}, Lcom/kingroot/common/uilib/banner/BannerViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SO:Lcom/kingroot/common/uilib/banner/BannerViewPager;

    invoke-virtual {v0}, Lcom/kingroot/common/uilib/banner/BannerViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 301
    :cond_0
    return-void
.end method

.method public setAutoPlayInterval(I)V
    .locals 0

    .prologue
    .line 309
    iput p1, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SW:I

    .line 310
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 661
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SO:Lcom/kingroot/common/uilib/banner/BannerViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SR:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/kingroot/common/uilib/banner/BannerView;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    .line 685
    :cond_0
    :goto_0
    return-void

    .line 665
    :cond_1
    iget-boolean v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SV:Z

    if-eqz v0, :cond_4

    .line 666
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SO:Lcom/kingroot/common/uilib/banner/BannerViewPager;

    invoke-virtual {v0}, Lcom/kingroot/common/uilib/banner/BannerViewPager;->getCurrentItem()I

    move-result v1

    .line 667
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SR:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int v0, v1, v0

    .line 668
    sub-int v2, p1, v0

    .line 671
    if-gez v2, :cond_2

    .line 672
    const/4 v0, -0x1

    :goto_1
    if-lt v0, v2, :cond_3

    .line 673
    iget-object v3, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SO:Lcom/kingroot/common/uilib/banner/BannerViewPager;

    add-int v4, v1, v0

    invoke-virtual {v3, v4, v5}, Lcom/kingroot/common/uilib/banner/BannerViewPager;->setCurrentItem(IZ)V

    .line 672
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 675
    :cond_2
    if-lez v2, :cond_3

    .line 676
    const/4 v0, 0x1

    :goto_2
    if-gt v0, v2, :cond_3

    .line 677
    iget-object v3, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SO:Lcom/kingroot/common/uilib/banner/BannerViewPager;

    add-int v4, v1, v0

    invoke-virtual {v3, v4, v5}, Lcom/kingroot/common/uilib/banner/BannerViewPager;->setCurrentItem(IZ)V

    .line 676
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 681
    :cond_3
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/banner/BannerView;->os()V

    goto :goto_0

    .line 683
    :cond_4
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SO:Lcom/kingroot/common/uilib/banner/BannerViewPager;

    invoke-virtual {v0, p1, v5}, Lcom/kingroot/common/uilib/banner/BannerViewPager;->setCurrentItem(IZ)V

    goto :goto_0
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 380
    invoke-virtual {p0, p1, v0, v0}, Lcom/kingroot/common/uilib/banner/BannerView;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 381
    return-void
.end method

.method public varargs setData([I)V
    .locals 5
    .param p1    # [I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 389
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 390
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget v3, p1, v0

    .line 391
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/banner/BannerView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/kingroot/kinguser/wz;->c(Landroid/content/Context;I)Landroid/widget/ImageView;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 393
    :cond_0
    invoke-virtual {p0, v1}, Lcom/kingroot/common/uilib/banner/BannerView;->setData(Ljava/util/List;)V

    .line 394
    return-void
.end method

.method public setDelegate(Lcom/kingroot/common/uilib/banner/BannerView$c;)V
    .locals 0

    .prologue
    .line 888
    iput-object p1, p0, Lcom/kingroot/common/uilib/banner/BannerView;->To:Lcom/kingroot/common/uilib/banner/BannerView$c;

    .line 889
    return-void
.end method

.method public setDoubleMode(Z)V
    .locals 0

    .prologue
    .line 896
    iput-boolean p1, p0, Lcom/kingroot/common/uilib/banner/BannerView;->TF:Z

    .line 897
    return-void
.end method

.method public setIsNeedShowIndicatorOnOnlyOnePage(Z)V
    .locals 0

    .prologue
    .line 657
    iput-boolean p1, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tw:Z

    .line 658
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0

    .prologue
    .line 414
    iput-object p1, p0, Lcom/kingroot/common/uilib/banner/BannerView;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 415
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 2

    .prologue
    .line 499
    iput p1, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tq:I

    .line 500
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SO:Lcom/kingroot/common/uilib/banner/BannerViewPager;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SO:Lcom/kingroot/common/uilib/banner/BannerViewPager;

    iget v1, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tq:I

    invoke-virtual {v0, v1}, Lcom/kingroot/common/uilib/banner/BannerViewPager;->setOverScrollMode(I)V

    .line 503
    :cond_0
    return-void
.end method

.method public setPageChangeDuration(I)V
    .locals 1

    .prologue
    .line 277
    if-ltz p1, :cond_0

    const/16 v0, 0x7d0

    if-gt p1, v0, :cond_0

    .line 278
    iput p1, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SX:I

    .line 279
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SO:Lcom/kingroot/common/uilib/banner/BannerViewPager;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SO:Lcom/kingroot/common/uilib/banner/BannerViewPager;

    invoke-virtual {v0, p1}, Lcom/kingroot/common/uilib/banner/BannerViewPager;->setPageChangeDuration(I)V

    .line 283
    :cond_0
    return-void
.end method

.method public setPageTransformer(Landroid/support/v4/view/ViewPager$PageTransformer;)V
    .locals 2

    .prologue
    .line 805
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SO:Lcom/kingroot/common/uilib/banner/BannerViewPager;

    if-eqz v0, :cond_0

    .line 806
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SO:Lcom/kingroot/common/uilib/banner/BannerViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/common/uilib/banner/BannerViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V

    .line 808
    :cond_0
    return-void
.end method

.method public setTransitionEffect(Lcom/kingroot/kinguser/xl;)V
    .locals 1

    .prologue
    .line 788
    iput-object p1, p0, Lcom/kingroot/common/uilib/banner/BannerView;->Tj:Lcom/kingroot/kinguser/xl;

    .line 789
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SO:Lcom/kingroot/common/uilib/banner/BannerViewPager;

    if-eqz v0, :cond_0

    .line 790
    invoke-direct {p0}, Lcom/kingroot/common/uilib/banner/BannerView;->initViewPager()V

    .line 791
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SQ:Ljava/util/List;

    if-nez v0, :cond_1

    .line 792
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SR:Ljava/util/List;

    invoke-static {v0}, Lcom/kingroot/kinguser/wz;->K(Ljava/util/List;)V

    .line 797
    :cond_0
    :goto_0
    return-void

    .line 794
    :cond_1
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView;->SQ:Ljava/util/List;

    invoke-static {v0}, Lcom/kingroot/kinguser/wz;->K(Ljava/util/List;)V

    goto :goto_0
.end method
