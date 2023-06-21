.class public Lcom/kingroot/kinguser/agf;
.super Lcom/kingroot/kinguser/yn$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/agf$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/yn$a",
        "<",
        "Lcom/kingroot/kinguser/model/RootMgrAppModel;",
        ">;"
    }
.end annotation


# instance fields
.field private alc:I

.field private ald:Landroid/view/View$OnClickListener;

.field private ale:Landroid/view/View$OnClickListener;

.field private alf:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/yn$a;-><init>(Landroid/content/Context;I)V

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingroot/kinguser/agf;->alc:I

    .line 39
    return-void
.end method

.method private f(Landroid/view/View;F)V
    .locals 4

    .prologue
    .line 201
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 202
    invoke-virtual {v0, p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->rotation(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v2, 0x12c

    .line 203
    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 205
    return-void
.end method

.method private fr(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 193
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070283

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 197
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070282

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/kingroot/kinguser/agf;->ald:Landroid/view/View$OnClickListener;

    .line 56
    iput-object p2, p0, Lcom/kingroot/kinguser/agf;->ale:Landroid/view/View$OnClickListener;

    .line 57
    iput-object p3, p0, Lcom/kingroot/kinguser/agf;->alf:Landroid/view/View$OnClickListener;

    .line 58
    return-void
.end method

.method public b(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 65
    if-nez p2, :cond_1

    .line 66
    new-instance v1, Lcom/kingroot/kinguser/agf$a;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/agf$a;-><init>(Lcom/kingroot/kinguser/agf;)V

    .line 67
    invoke-virtual {p0}, Lcom/kingroot/kinguser/agf;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0300e3

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 68
    iget v0, p0, Lcom/kingroot/kinguser/agf;->Vu:I

    .line 69
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/kingroot/kinguser/agf$a;->afT:Landroid/widget/TextView;

    .line 74
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/agf;->Vt:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/yn$b;

    .line 76
    if-eqz v1, :cond_0

    .line 77
    iget-object v2, v1, Lcom/kingroot/kinguser/agf$a;->afT:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 78
    iget-object v2, v1, Lcom/kingroot/kinguser/agf$a;->afT:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/kingroot/kinguser/yn$b;->title:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    :cond_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 83
    return-object p2

    .line 71
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/agf$a;

    move-object v1, v0

    goto :goto_0
.end method

.method public c(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 89
    .line 90
    iget-object v0, p0, Lcom/kingroot/kinguser/agf;->Vt:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/yn$b;

    iget-object v0, v0, Lcom/kingroot/kinguser/yn$b;->data:Ljava/lang/Object;

    check-cast v0, Lcom/kingroot/kinguser/model/RootMgrAppModel;

    .line 93
    if-nez p2, :cond_0

    .line 94
    new-instance v2, Lcom/kingroot/kinguser/agf$a;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/agf$a;-><init>(Lcom/kingroot/kinguser/agf;)V

    .line 95
    invoke-virtual {p0}, Lcom/kingroot/kinguser/agf;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0300c1

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 96
    const v1, 0x7f0f0148

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/kingroot/kinguser/agf$a;->ajH:Landroid/widget/ImageView;

    .line 97
    const v1, 0x7f0f00d1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/kingroot/kinguser/agf$a;->afT:Landroid/widget/TextView;

    .line 98
    const v1, 0x7f0f0155

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/kingroot/kinguser/agf$a;->alj:Landroid/widget/TextView;

    .line 99
    const v1, 0x7f0f014a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/kingroot/kinguser/agf$a;->ali:Landroid/widget/TextView;

    .line 100
    const v1, 0x7f0f020c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/kingroot/kinguser/agf$a;->alk:Landroid/widget/ImageView;

    .line 101
    const v1, 0x7f0f0246

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v2, Lcom/kingroot/kinguser/agf$a;->alm:Landroid/widget/LinearLayout;

    .line 102
    const v1, 0x7f0f0247

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v2, Lcom/kingroot/kinguser/agf$a;->aln:Landroid/view/View;

    .line 103
    const v1, 0x7f0f0248

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v2, Lcom/kingroot/kinguser/agf$a;->alo:Landroid/view/View;

    .line 104
    const v1, 0x7f0f0249

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v2, Lcom/kingroot/kinguser/agf$a;->alp:Landroid/view/View;

    .line 105
    const v1, 0x7f0f014b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/kingroot/kinguser/agf$a;->alq:Landroid/widget/TextView;

    .line 106
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 111
    :goto_0
    iget v1, p0, Lcom/kingroot/kinguser/agf;->alc:I

    if-eq v1, p1, :cond_1

    .line 112
    iget-object v1, v2, Lcom/kingroot/kinguser/agf$a;->alm:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/kingroot/kinguser/agf$1;

    invoke-direct {v3, p0, v2}, Lcom/kingroot/kinguser/agf$1;-><init>(Lcom/kingroot/kinguser/agf;Lcom/kingroot/kinguser/agf$a;)V

    invoke-static {v1, v5, v3}, Lcom/kingroot/kinguser/bhk;->a(Landroid/view/View;ZLcom/kingroot/kinguser/bhk$a;)V

    .line 119
    iget-object v1, v2, Lcom/kingroot/kinguser/agf$a;->alk:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/kingroot/kinguser/agf;->f(Landroid/view/View;F)V

    .line 121
    iget-object v1, v2, Lcom/kingroot/kinguser/agf$a;->alj:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 122
    iget-object v1, v2, Lcom/kingroot/kinguser/agf$a;->alj:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 140
    :goto_1
    iget-object v1, v2, Lcom/kingroot/kinguser/agf$a;->afT:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/kingroot/kinguser/model/RootMgrAppModel;->aQQ:Lcom/kingroot/kinguser/model/AppInfo;

    invoke-virtual {v3}, Lcom/kingroot/kinguser/model/AppInfo;->PD()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v1, v2, Lcom/kingroot/kinguser/agf$a;->alj:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/kingroot/kinguser/model/RootMgrAppModel;->aQQ:Lcom/kingroot/kinguser/model/AppInfo;

    invoke-virtual {v3}, Lcom/kingroot/kinguser/model/AppInfo;->PE()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/kingroot/kinguser/agf;->fr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget v1, v0, Lcom/kingroot/kinguser/model/RootMgrAppModel;->aQS:I

    if-nez v1, :cond_2

    .line 148
    iget-object v1, v2, Lcom/kingroot/kinguser/agf$a;->ali:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v3

    const v4, 0x7f070272

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v1, v2, Lcom/kingroot/kinguser/agf$a;->ali:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v3

    const v4, 0x7f0e00c3

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 159
    :goto_2
    iget v1, v0, Lcom/kingroot/kinguser/model/RootMgrAppModel;->ot:I

    if-nez v1, :cond_4

    .line 161
    iget-object v1, v2, Lcom/kingroot/kinguser/agf$a;->alq:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    iget-object v1, v2, Lcom/kingroot/kinguser/agf$a;->afT:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 187
    :goto_3
    invoke-static {}, Lcom/kingroot/kinguser/yr;->pb()Lcom/kingroot/kinguser/acr;

    move-result-object v1

    iget-object v0, v0, Lcom/kingroot/kinguser/model/RootMgrAppModel;->aQQ:Lcom/kingroot/kinguser/model/AppInfo;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/model/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v2, Lcom/kingroot/kinguser/agf$a;->ajH:Landroid/widget/ImageView;

    const v3, 0x7f02016a

    invoke-virtual {v1, v0, v2, v3}, Lcom/kingroot/kinguser/acr;->a(Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 189
    return-object p2

    .line 108
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/agf$a;

    move-object v2, v1

    goto/16 :goto_0

    .line 124
    :cond_1
    iget-object v1, v2, Lcom/kingroot/kinguser/agf$a;->alm:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 125
    iget-object v1, v2, Lcom/kingroot/kinguser/agf$a;->alm:Landroid/widget/LinearLayout;

    invoke-static {v1, v6, v4}, Lcom/kingroot/kinguser/bhk;->a(Landroid/view/View;ZLcom/kingroot/kinguser/bhk$a;)V

    .line 126
    iget-object v1, v2, Lcom/kingroot/kinguser/agf$a;->alk:Landroid/widget/ImageView;

    const/high16 v3, 0x43340000    # 180.0f

    invoke-direct {p0, v1, v3}, Lcom/kingroot/kinguser/agf;->f(Landroid/view/View;F)V

    .line 127
    iget-object v1, v2, Lcom/kingroot/kinguser/agf$a;->aln:Landroid/view/View;

    iget-object v3, p0, Lcom/kingroot/kinguser/agf;->ald:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v1, v2, Lcom/kingroot/kinguser/agf$a;->alo:Landroid/view/View;

    iget-object v3, p0, Lcom/kingroot/kinguser/agf;->ale:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v1, v2, Lcom/kingroot/kinguser/agf$a;->alp:Landroid/view/View;

    iget-object v3, p0, Lcom/kingroot/kinguser/agf;->alf:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v1, v2, Lcom/kingroot/kinguser/agf$a;->alj:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 132
    iget-object v1, v2, Lcom/kingroot/kinguser/agf$a;->alj:Landroid/widget/TextView;

    const/16 v3, 0x64

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 133
    iget-object v1, v2, Lcom/kingroot/kinguser/agf$a;->alj:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_1

    .line 150
    :cond_2
    iget v1, v0, Lcom/kingroot/kinguser/model/RootMgrAppModel;->aQS:I

    if-ne v1, v6, :cond_3

    .line 151
    iget-object v1, v2, Lcom/kingroot/kinguser/agf$a;->ali:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v3

    const v4, 0x7f070275

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v1, v2, Lcom/kingroot/kinguser/agf$a;->ali:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v3

    const v4, 0x7f0e00c6

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 154
    :cond_3
    iget-object v1, v2, Lcom/kingroot/kinguser/agf$a;->ali:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v3

    const v4, 0x7f070273

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v1, v2, Lcom/kingroot/kinguser/agf$a;->ali:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v3

    const v4, 0x7f0e0014

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 164
    :cond_4
    iget v1, v0, Lcom/kingroot/kinguser/model/RootMgrAppModel;->ot:I

    if-ne v1, v6, :cond_5

    .line 165
    iget-object v1, v2, Lcom/kingroot/kinguser/agf$a;->alq:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v3

    const v4, 0x7f0e000a

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 166
    iget-object v1, v2, Lcom/kingroot/kinguser/agf$a;->alq:Landroid/widget/TextView;

    const v3, 0x7f020284

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 167
    iget-object v1, v2, Lcom/kingroot/kinguser/agf$a;->alq:Landroid/widget/TextView;

    const v3, 0x7f070264

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 179
    :goto_4
    iget-object v1, v2, Lcom/kingroot/kinguser/agf$a;->alq:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    iget-object v1, v2, Lcom/kingroot/kinguser/agf$a;->alq:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/kingroot/kinguser/bhd;->a(Landroid/widget/TextView;)F

    move-result v1

    float-to-int v1, v1

    const/high16 v3, 0x40e00000    # 7.0f

    invoke-static {v3}, Lcom/kingroot/kinguser/abg;->r(F)I

    move-result v3

    add-int/2addr v3, v1

    .line 181
    iget-object v1, v2, Lcom/kingroot/kinguser/agf$a;->afT:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v5, v3, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 182
    iget-object v1, v2, Lcom/kingroot/kinguser/agf$a;->alq:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 183
    neg-int v3, v3

    invoke-virtual {v1, v3, v5, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 184
    iget-object v3, v2, Lcom/kingroot/kinguser/agf$a;->alq:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    .line 168
    :cond_5
    iget v1, v0, Lcom/kingroot/kinguser/model/RootMgrAppModel;->ot:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_6

    .line 169
    iget-object v1, v2, Lcom/kingroot/kinguser/agf$a;->alq:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v3

    const v4, 0x7f0e0009

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 170
    iget-object v1, v2, Lcom/kingroot/kinguser/agf$a;->alq:Landroid/widget/TextView;

    const v3, 0x7f020283

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 171
    iget-object v1, v2, Lcom/kingroot/kinguser/agf$a;->alq:Landroid/widget/TextView;

    const v3, 0x7f070094

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 173
    :cond_6
    iget-object v1, v2, Lcom/kingroot/kinguser/agf$a;->alq:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v3

    const v4, 0x7f0e000b

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 174
    iget-object v1, v2, Lcom/kingroot/kinguser/agf$a;->alq:Landroid/widget/TextView;

    const v3, 0x7f020285

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 175
    iget-object v1, v2, Lcom/kingroot/kinguser/agf$a;->alq:Landroid/widget/TextView;

    const v3, 0x7f0702ab

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4
.end method

.method public cZ(I)V
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lcom/kingroot/kinguser/agf;->alc:I

    .line 43
    return-void
.end method

.method public vK()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/kingroot/kinguser/agf;->alc:I

    return v0
.end method
