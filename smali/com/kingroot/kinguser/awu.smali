.class public Lcom/kingroot/kinguser/awu;
.super Lcom/kingroot/kinguser/ym;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/aud$b;


# instance fields
.field private aVl:Lcom/kingroot/kinguser/aud$a;

.field private aVm:Landroid/view/View;

.field private aVn:Landroid/view/ViewGroup;

.field private aVo:Landroid/view/ViewGroup;

.field private aVp:Landroid/view/ViewGroup;

.field private aVq:Lcom/kingroot/kinguser/akj;

.field private aVr:Lcom/kingroot/kinguser/bcd;

.field private aVs:Landroid/view/View;

.field private aVt:Landroid/widget/TextView;

.field private aVu:Landroid/widget/TextView;

.field private aVv:Lcom/kingroot/kinguser/bcp;

.field private aVw:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ym;-><init>(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method private Ty()V
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/kingroot/kinguser/awu;->aVv:Lcom/kingroot/kinguser/bcp;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Lcom/kingroot/kinguser/bcp;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/awu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kingroot/kinguser/awu;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/bcp;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/awu;->aVv:Lcom/kingroot/kinguser/bcp;

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/awu;->aVv:Lcom/kingroot/kinguser/bcp;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bcp;->show()V

    .line 144
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/kingroot/kinguser/awu;->aVw:Z

    if-eqz v0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/bbk;->Wo()Lcom/kingroot/kinguser/bbk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/bbk;->bl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_0

    .line 112
    invoke-static {v0}, Landroid/graphics/drawable/BitmapDrawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 113
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_2

    .line 114
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/awu;->aVw:Z

    goto :goto_0

    .line 116
    :cond_2
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/awu;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/kingroot/kinguser/awu;->Ty()V

    return-void
.end method

.method private gq()V
    .locals 10

    .prologue
    .line 147
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/akj;->aT(Landroid/content/Context;)Lcom/kingroot/kinguser/akj;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/awu;->aVq:Lcom/kingroot/kinguser/akj;

    .line 148
    new-instance v0, Lcom/kingroot/kinguser/bcd;

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bcd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/awu;->aVr:Lcom/kingroot/kinguser/bcd;

    .line 150
    iget-object v0, p0, Lcom/kingroot/kinguser/awu;->aVq:Lcom/kingroot/kinguser/akj;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/akj;->AL()J

    move-result-wide v2

    .line 152
    const/4 v0, 0x0

    .line 153
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const-wide/16 v4, 0xc8

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 154
    const/4 v0, 0x1

    .line 157
    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v4, 0x6

    if-ge v1, v4, :cond_6

    .line 158
    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 159
    invoke-virtual {p0}, Lcom/kingroot/kinguser/awu;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03008a

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 160
    iget-object v5, p0, Lcom/kingroot/kinguser/awu;->aVn:Landroid/view/ViewGroup;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v6, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v4, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 161
    iget-object v5, p0, Lcom/kingroot/kinguser/awu;->aVr:Lcom/kingroot/kinguser/bcd;

    iget-object v6, p0, Lcom/kingroot/kinguser/awu;->aVq:Lcom/kingroot/kinguser/akj;

    invoke-virtual {v6}, Lcom/kingroot/kinguser/akj;->AM()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/kingroot/kinguser/bcd;->c(Landroid/view/View;Ljava/lang/String;)V

    .line 162
    iget-object v5, p0, Lcom/kingroot/kinguser/awu;->aVr:Lcom/kingroot/kinguser/bcd;

    iget-object v6, p0, Lcom/kingroot/kinguser/awu;->aVq:Lcom/kingroot/kinguser/akj;

    invoke-virtual {v6}, Lcom/kingroot/kinguser/akj;->AC()J

    move-result-wide v6

    invoke-virtual {v5, v4, v6, v7}, Lcom/kingroot/kinguser/bcd;->b(Landroid/view/View;J)V

    .line 163
    iget-object v5, p0, Lcom/kingroot/kinguser/awu;->aVr:Lcom/kingroot/kinguser/bcd;

    invoke-virtual {v5, v4}, Lcom/kingroot/kinguser/bcd;->I(Landroid/view/View;)V

    .line 164
    iget-object v5, p0, Lcom/kingroot/kinguser/awu;->aVr:Lcom/kingroot/kinguser/bcd;

    iget-object v6, p0, Lcom/kingroot/kinguser/awu;->aVu:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/kingroot/kinguser/awu;->aVt:Landroid/widget/TextView;

    invoke-virtual {v5, v6, v7}, Lcom/kingroot/kinguser/bcd;->a(Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 165
    invoke-direct {p0, v4}, Lcom/kingroot/kinguser/awu;->y(Landroid/view/View;)V

    .line 157
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    :cond_1
    const/4 v4, 0x5

    if-ne v1, v4, :cond_2

    const-wide/16 v4, 0xc8

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    .line 169
    invoke-virtual {p0}, Lcom/kingroot/kinguser/awu;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03008a

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 170
    iget-object v5, p0, Lcom/kingroot/kinguser/awu;->aVn:Landroid/view/ViewGroup;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v6, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v4, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 171
    iget-object v5, p0, Lcom/kingroot/kinguser/awu;->aVr:Lcom/kingroot/kinguser/bcd;

    iget-object v6, p0, Lcom/kingroot/kinguser/awu;->aVq:Lcom/kingroot/kinguser/akj;

    invoke-virtual {v6}, Lcom/kingroot/kinguser/akj;->AM()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/kingroot/kinguser/bcd;->c(Landroid/view/View;Ljava/lang/String;)V

    .line 172
    iget-object v5, p0, Lcom/kingroot/kinguser/awu;->aVr:Lcom/kingroot/kinguser/bcd;

    iget-object v6, p0, Lcom/kingroot/kinguser/awu;->aVq:Lcom/kingroot/kinguser/akj;

    invoke-virtual {v6}, Lcom/kingroot/kinguser/akj;->AC()J

    move-result-wide v6

    invoke-virtual {v5, v4, v6, v7}, Lcom/kingroot/kinguser/bcd;->b(Landroid/view/View;J)V

    .line 173
    iget-object v5, p0, Lcom/kingroot/kinguser/awu;->aVr:Lcom/kingroot/kinguser/bcd;

    invoke-virtual {v5, v4}, Lcom/kingroot/kinguser/bcd;->I(Landroid/view/View;)V

    .line 174
    iget-object v5, p0, Lcom/kingroot/kinguser/awu;->aVr:Lcom/kingroot/kinguser/bcd;

    invoke-virtual {v5, v4}, Lcom/kingroot/kinguser/bcd;->G(Landroid/view/View;)V

    .line 175
    iget-object v5, p0, Lcom/kingroot/kinguser/awu;->aVr:Lcom/kingroot/kinguser/bcd;

    iget-object v6, p0, Lcom/kingroot/kinguser/awu;->aVu:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/kingroot/kinguser/awu;->aVt:Landroid/widget/TextView;

    const-wide/16 v8, 0xc8

    sub-long v8, v2, v8

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/kingroot/kinguser/bcd;->a(Landroid/widget/TextView;Landroid/widget/TextView;J)V

    .line 176
    invoke-direct {p0, v4}, Lcom/kingroot/kinguser/awu;->y(Landroid/view/View;)V

    goto :goto_1

    .line 179
    :cond_2
    invoke-virtual {p0}, Lcom/kingroot/kinguser/awu;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030089

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 180
    iget-object v5, p0, Lcom/kingroot/kinguser/awu;->aVn:Landroid/view/ViewGroup;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v6, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v4, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 181
    if-eqz v0, :cond_3

    .line 182
    iget-object v5, p0, Lcom/kingroot/kinguser/awu;->aVr:Lcom/kingroot/kinguser/bcd;

    iget-object v6, p0, Lcom/kingroot/kinguser/awu;->aVq:Lcom/kingroot/kinguser/akj;

    add-int/lit8 v7, v1, -0x1

    invoke-virtual {v6, v7}, Lcom/kingroot/kinguser/akj;->dW(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/kingroot/kinguser/bcd;->b(Landroid/view/View;Ljava/lang/String;)V

    .line 183
    iget-object v5, p0, Lcom/kingroot/kinguser/awu;->aVr:Lcom/kingroot/kinguser/bcd;

    iget-object v6, p0, Lcom/kingroot/kinguser/awu;->aVq:Lcom/kingroot/kinguser/akj;

    add-int/lit8 v7, v1, -0x1

    invoke-virtual {v6, v7}, Lcom/kingroot/kinguser/akj;->dV(I)J

    move-result-wide v6

    invoke-virtual {v5, v4, v6, v7}, Lcom/kingroot/kinguser/bcd;->a(Landroid/view/View;J)V

    .line 184
    iget-object v5, p0, Lcom/kingroot/kinguser/awu;->aVr:Lcom/kingroot/kinguser/bcd;

    iget-object v6, p0, Lcom/kingroot/kinguser/awu;->aVq:Lcom/kingroot/kinguser/akj;

    add-int/lit8 v7, v1, -0x1

    invoke-virtual {v6, v7}, Lcom/kingroot/kinguser/akj;->dX(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/kingroot/kinguser/bcd;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 196
    :goto_2
    if-nez v1, :cond_5

    const-wide/16 v6, 0x5

    sub-long v6, v2, v6

    const-wide/16 v8, 0xc8

    cmp-long v5, v6, v8

    if-gtz v5, :cond_5

    .line 197
    iget-object v5, p0, Lcom/kingroot/kinguser/awu;->aVr:Lcom/kingroot/kinguser/bcd;

    invoke-virtual {v5, v4}, Lcom/kingroot/kinguser/bcd;->H(Landroid/view/View;)V

    goto/16 :goto_1

    .line 187
    :cond_3
    iget-object v5, p0, Lcom/kingroot/kinguser/awu;->aVq:Lcom/kingroot/kinguser/akj;

    invoke-virtual {v5}, Lcom/kingroot/kinguser/akj;->AC()J

    move-result-wide v6

    iget-object v5, p0, Lcom/kingroot/kinguser/awu;->aVq:Lcom/kingroot/kinguser/akj;

    invoke-virtual {v5, v1}, Lcom/kingroot/kinguser/akj;->dV(I)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x1

    cmp-long v5, v6, v8

    if-nez v5, :cond_4

    .line 188
    iget-object v5, p0, Lcom/kingroot/kinguser/awu;->aVr:Lcom/kingroot/kinguser/bcd;

    iget-object v6, p0, Lcom/kingroot/kinguser/awu;->aVq:Lcom/kingroot/kinguser/akj;

    invoke-virtual {v6, v1}, Lcom/kingroot/kinguser/akj;->dV(I)J

    move-result-wide v6

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    invoke-virtual {v5, v4, v6, v7}, Lcom/kingroot/kinguser/bcd;->a(Landroid/view/View;J)V

    .line 192
    :goto_3
    iget-object v5, p0, Lcom/kingroot/kinguser/awu;->aVr:Lcom/kingroot/kinguser/bcd;

    iget-object v6, p0, Lcom/kingroot/kinguser/awu;->aVq:Lcom/kingroot/kinguser/akj;

    invoke-virtual {v6, v1}, Lcom/kingroot/kinguser/akj;->dW(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/kingroot/kinguser/bcd;->b(Landroid/view/View;Ljava/lang/String;)V

    .line 193
    iget-object v5, p0, Lcom/kingroot/kinguser/awu;->aVr:Lcom/kingroot/kinguser/bcd;

    iget-object v6, p0, Lcom/kingroot/kinguser/awu;->aVq:Lcom/kingroot/kinguser/akj;

    invoke-virtual {v6, v1}, Lcom/kingroot/kinguser/akj;->dX(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/kingroot/kinguser/bcd;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_2

    .line 190
    :cond_4
    iget-object v5, p0, Lcom/kingroot/kinguser/awu;->aVr:Lcom/kingroot/kinguser/bcd;

    iget-object v6, p0, Lcom/kingroot/kinguser/awu;->aVq:Lcom/kingroot/kinguser/akj;

    invoke-virtual {v6, v1}, Lcom/kingroot/kinguser/akj;->dV(I)J

    move-result-wide v6

    invoke-virtual {v5, v4, v6, v7}, Lcom/kingroot/kinguser/bcd;->a(Landroid/view/View;J)V

    goto :goto_3

    .line 199
    :cond_5
    iget-object v5, p0, Lcom/kingroot/kinguser/awu;->aVr:Lcom/kingroot/kinguser/bcd;

    invoke-virtual {v5, v4}, Lcom/kingroot/kinguser/bcd;->G(Landroid/view/View;)V

    goto/16 :goto_1

    .line 204
    :cond_6
    return-void
.end method

.method private y(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 126
    if-nez p1, :cond_0

    .line 137
    :goto_0
    return-void

    .line 129
    :cond_0
    new-instance v0, Lcom/kingroot/kinguser/awu$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/awu$2;-><init>(Lcom/kingroot/kinguser/awu;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/aud$a;)V
    .locals 1

    .prologue
    .line 209
    invoke-static {p1}, Lcom/kingroot/kinguser/zd;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aud$a;

    iput-object v0, p0, Lcom/kingroot/kinguser/awu;->aVl:Lcom/kingroot/kinguser/aud$a;

    .line 210
    return-void
.end method

.method protected oG()Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 59
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18861

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 60
    invoke-virtual {p0}, Lcom/kingroot/kinguser/awu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 61
    const v1, 0x7f030018

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/awu;->aVm:Landroid/view/View;

    .line 62
    iget-object v0, p0, Lcom/kingroot/kinguser/awu;->aVm:Landroid/view/View;

    const v1, 0x7f0f008b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/kingroot/kinguser/awu;->aVn:Landroid/view/ViewGroup;

    .line 63
    iget-object v0, p0, Lcom/kingroot/kinguser/awu;->aVm:Landroid/view/View;

    const v1, 0x7f0f008a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/kingroot/kinguser/awu;->aVp:Landroid/view/ViewGroup;

    .line 64
    iget-object v0, p0, Lcom/kingroot/kinguser/awu;->aVp:Landroid/view/ViewGroup;

    const v1, 0x7f0f01e8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/awu;->aVu:Landroid/widget/TextView;

    .line 66
    invoke-static {}, Lcom/kingroot/kinguser/zb;->pk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/kingroot/kinguser/awu;->aVm:Landroid/view/View;

    const v1, 0x7f0f008c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcom/kingroot/kinguser/awu;->aVm:Landroid/view/View;

    const v1, 0x7f0f008d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/kingroot/kinguser/awu;->aVo:Landroid/view/ViewGroup;

    .line 69
    iget-object v0, p0, Lcom/kingroot/kinguser/awu;->aVo:Landroid/view/ViewGroup;

    const v1, 0x7f0f01e3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/awu;->aVt:Landroid/widget/TextView;

    .line 70
    iget-object v0, p0, Lcom/kingroot/kinguser/awu;->aVo:Landroid/view/ViewGroup;

    const v1, 0x7f0f01e4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/awu;->aVs:Landroid/view/View;

    .line 72
    iget-object v0, p0, Lcom/kingroot/kinguser/awu;->aVs:Landroid/view/View;

    new-instance v1, Lcom/kingroot/kinguser/awu$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/awu$1;-><init>(Lcom/kingroot/kinguser/awu;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iput-boolean v3, p0, Lcom/kingroot/kinguser/awu;->aVw:Z

    .line 81
    invoke-virtual {p0}, Lcom/kingroot/kinguser/awu;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/awu;->aVs:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/awu;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 83
    :cond_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/awu;->gq()V

    .line 86
    iget-object v0, p0, Lcom/kingroot/kinguser/awu;->aVm:Landroid/view/View;

    return-object v0
.end method

.method protected oO()Lcom/kingroot/kinguser/yp;
    .locals 4

    .prologue
    .line 92
    new-instance v0, Lcom/kingroot/kinguser/ada;

    iget-object v1, p0, Lcom/kingroot/kinguser/awu;->mContext:Landroid/content/Context;

    const-wide/32 v2, 0x7f070195

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/awu;->V(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/ada;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method
