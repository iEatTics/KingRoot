.class public Lcom/kingroot/kinguser/activitys/ShareLoginActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private aiH:Landroid/widget/RelativeLayout;

.field private aiI:Landroid/widget/RelativeLayout;

.field private aiJ:Landroid/widget/LinearLayout;

.field private aiK:Lcom/kingroot/kinguser/wd;

.field private aiL:Lcom/kingroot/kinguser/bwe;

.field protected aiM:Landroid/widget/FrameLayout;

.field private aiN:Landroid/widget/RelativeLayout;

.field private aiO:Lcom/kingcore/uilib/ProgressWhell;

.field private aiP:I

.field private aiQ:Landroid/view/View$OnClickListener;

.field public aiR:Lcom/kingroot/kinguser/bwd;

.field private aiS:Lcom/kingroot/kinguser/we$a;

.field private aie:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 161
    new-instance v0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$2;-><init>(Lcom/kingroot/kinguser/activitys/ShareLoginActivity;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->aiQ:Landroid/view/View$OnClickListener;

    .line 234
    new-instance v0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$3;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$3;-><init>(Lcom/kingroot/kinguser/activitys/ShareLoginActivity;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->aiR:Lcom/kingroot/kinguser/bwd;

    .line 277
    new-instance v0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$4;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$4;-><init>(Lcom/kingroot/kinguser/activitys/ShareLoginActivity;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->aiS:Lcom/kingroot/kinguser/we$a;

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/activitys/ShareLoginActivity;)Lcom/kingcore/uilib/ProgressWhell;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->aiO:Lcom/kingcore/uilib/ProgressWhell;

    return-object v0
.end method

.method public static a(Landroid/content/Context;II)V
    .locals 2

    .prologue
    .line 135
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 136
    const-class v1, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 137
    const-string v1, "ShareLoginActivity_from_scene"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 138
    const-string v1, "ShareLoginActivity_login_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 139
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 140
    return-void
.end method

.method public static aK(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 129
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 130
    const-class v1, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 131
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 132
    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/activitys/ShareLoginActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->aiH:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/activitys/ShareLoginActivity;)Lcom/kingroot/kinguser/wd;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->aiK:Lcom/kingroot/kinguser/wd;

    return-object v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/activitys/ShareLoginActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->aiN:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/activitys/ShareLoginActivity;)I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->aie:I

    return v0
.end method

.method static synthetic f(Lcom/kingroot/kinguser/activitys/ShareLoginActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->aiI:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic g(Lcom/kingroot/kinguser/activitys/ShareLoginActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->aiJ:Landroid/widget/LinearLayout;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bwd;)V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->aiL:Lcom/kingroot/kinguser/bwe;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bwe;->agl()Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->aiL:Lcom/kingroot/kinguser/bwe;

    const-string v1, "all"

    invoke-virtual {v0, p0, v1, p1}, Lcom/kingroot/kinguser/bwe;->c(Landroid/app/Activity;Ljava/lang/String;Lcom/kingroot/kinguser/bwd;)I

    .line 228
    :goto_0
    return-void

    .line 226
    :cond_0
    const v0, 0x7f0704c2

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/zj;->c(Ljava/lang/CharSequence;I)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 145
    const/16 v0, 0x2b5d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2776

    if-ne p1, v0, :cond_1

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->aiR:Lcom/kingroot/kinguser/bwd;

    invoke-static {p1, p2, p3, v0}, Lcom/kingroot/kinguser/bwe;->b(IILandroid/content/Intent;Lcom/kingroot/kinguser/bwd;)Z

    .line 149
    :cond_1
    iget v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->aie:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 150
    invoke-virtual {p0}, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->finish()V

    .line 158
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 159
    return-void

    .line 152
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->aiM:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->aiM:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->aiN:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18931

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 65
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 67
    const-string v1, "ShareLoginActivity_from_scene"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->aie:I

    .line 68
    const-string v1, "ShareLoginActivity_login_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->aiP:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :cond_0
    :goto_0
    invoke-virtual {p0, v4}, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->requestWindowFeature(I)Z

    .line 78
    const v0, 0x7f03001a

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->setContentView(I)V

    .line 79
    const v0, 0x7f0f0093

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->aiN:Landroid/widget/RelativeLayout;

    .line 80
    const v0, 0x7f0f0092

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->aiM:Landroid/widget/FrameLayout;

    .line 81
    const v0, 0x7f0f000c

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingcore/uilib/ProgressWhell;

    iput-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->aiO:Lcom/kingcore/uilib/ProgressWhell;

    .line 82
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->aiO:Lcom/kingcore/uilib/ProgressWhell;

    invoke-virtual {v0, v3}, Lcom/kingcore/uilib/ProgressWhell;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->aiO:Lcom/kingcore/uilib/ProgressWhell;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0e0122

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/ProgressWhell;->setBarColor(I)V

    .line 84
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->aiO:Lcom/kingcore/uilib/ProgressWhell;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/ProgressWhell;->setProgress(F)V

    .line 85
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->aiO:Lcom/kingcore/uilib/ProgressWhell;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lcom/kingroot/kinguser/abg;->r(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/ProgressWhell;->setBarWidth(I)V

    .line 86
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->aiO:Lcom/kingcore/uilib/ProgressWhell;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lcom/kingroot/kinguser/abg;->r(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/ProgressWhell;->setCircleRadius(I)V

    .line 87
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->aiO:Lcom/kingcore/uilib/ProgressWhell;

    new-instance v1, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/activitys/ShareLoginActivity$1;-><init>(Lcom/kingroot/kinguser/activitys/ShareLoginActivity;)V

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/ProgressWhell;->setCallback(Lcom/kingcore/uilib/ProgressWhell$a;)V

    .line 97
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->aiO:Lcom/kingcore/uilib/ProgressWhell;

    invoke-virtual {v0}, Lcom/kingcore/uilib/ProgressWhell;->gU()V

    .line 98
    const v0, 0x7f0f0096

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->aiH:Landroid/widget/RelativeLayout;

    .line 99
    const v0, 0x7f0f0097

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->aiI:Landroid/widget/RelativeLayout;

    .line 100
    const v0, 0x7f0f0094

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->aiJ:Landroid/widget/LinearLayout;

    .line 102
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->aiH:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->aiQ:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->aiI:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->aiQ:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->aiJ:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->aiQ:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->aiS:Lcom/kingroot/kinguser/we$a;

    invoke-static {v0}, Lcom/kingroot/kinguser/we;->a(Lcom/kingroot/kinguser/we$a;)V

    .line 108
    new-instance v0, Lcom/kingroot/kinguser/wd;

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/wd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->aiK:Lcom/kingroot/kinguser/wd;

    .line 109
    const-string v0, "100833207"

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bwe;->f(Ljava/lang/String;Landroid/content/Context;)Lcom/kingroot/kinguser/bwe;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->aiL:Lcom/kingroot/kinguser/bwe;

    .line 110
    iget v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->aie:I

    if-ne v0, v4, :cond_1

    .line 111
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->aiM:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->aiN:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 113
    iget v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->aiP:I

    if-nez v0, :cond_2

    .line 114
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->aiI:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->performClick()Z

    .line 119
    :cond_1
    :goto_1
    return-void

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->aiH:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->performClick()Z

    goto :goto_1

    .line 70
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->aiS:Lcom/kingroot/kinguser/we$a;

    invoke-static {v0}, Lcom/kingroot/kinguser/we;->a(Lcom/kingroot/kinguser/we$a;)V

    .line 125
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 126
    return-void
.end method
