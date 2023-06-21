.class public Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;
.super Lcom/kingroot/kinguser/activitys/KUBaseActivity;
.source "SourceFile"


# instance fields
.field private aci:Landroid/widget/Button;

.field private acj:Landroid/widget/Button;

.field private bnA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;",
            ">;"
        }
    .end annotation
.end field

.field private bnB:Landroid/widget/TextView;

.field private bnC:Landroid/widget/TextView;

.field private bnD:Landroid/view/ViewGroup;

.field private bnE:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/kingroot/kinguser/activitys/KUBaseActivity;-><init>()V

    return-void
.end method

.method public static u(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 52
    const-string v1, "key_urlcheck_req"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 53
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 54
    return-void
.end method


# virtual methods
.method public oC()Lcom/kingroot/kinguser/ym;
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const v3, 0x7f0f0096

    .line 58
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/activitys/KUBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;->requestWindowFeature(I)Z

    .line 60
    const v0, 0x7f03007a

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;->setContentView(I)V

    .line 63
    const v0, 0x7f0f0151

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 64
    const v1, 0x7f02020e

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 67
    const v0, 0x7f0f00de

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 68
    const v1, 0x7f020121

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 71
    invoke-virtual {p0, v3}, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 72
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0702df

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0e001a

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 74
    new-instance v1, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity$1;-><init>(Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    const v0, 0x7f0f0097

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;->acj:Landroid/widget/Button;

    .line 83
    iget-object v0, p0, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;->acj:Landroid/widget/Button;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0702e1

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;->acj:Landroid/widget/Button;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0e0019

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 85
    iget-object v0, p0, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;->acj:Landroid/widget/Button;

    new-instance v1, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity$2;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity$2;-><init>(Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    invoke-virtual {p0, v3}, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;->aci:Landroid/widget/Button;

    .line 95
    const v0, 0x7f0f0076

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 96
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0704e6

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    const v0, 0x7f0f0199

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;->bnB:Landroid/widget/TextView;

    .line 99
    const v0, 0x7f0f019a

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;->bnC:Landroid/widget/TextView;

    .line 100
    const v0, 0x7f0f019b

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;->bnE:Landroid/widget/TextView;

    .line 101
    const v0, 0x7f0f019c

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;->bnD:Landroid/view/ViewGroup;

    .line 103
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 281
    invoke-super {p0}, Lcom/kingroot/kinguser/activitys/KUBaseActivity;->onPause()V

    .line 282
    invoke-static {}, Lcom/kingroot/kinguser/bfw;->aaS()Lcom/kingroot/kinguser/bfw;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bfw;->dV(Z)V

    .line 283
    return-void
.end method

.method protected onResume()V
    .locals 9

    .prologue
    const/16 v3, 0x8

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 107
    invoke-super {p0}, Lcom/kingroot/kinguser/activitys/KUBaseActivity;->onResume()V

    .line 108
    invoke-static {}, Lcom/kingroot/kinguser/bfw;->aaS()Lcom/kingroot/kinguser/bfw;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/kingroot/kinguser/bfw;->dV(Z)V

    .line 110
    invoke-virtual {p0}, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 111
    const-string v1, "key_urlcheck_req"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;->bnA:Ljava/util/List;

    .line 112
    iget-object v0, p0, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;->bnA:Ljava/util/List;

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;->finish()V

    .line 276
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;->bnA:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v8, :cond_5

    .line 119
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18958

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 123
    iget-object v0, p0, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;->bnC:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;->bnD:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;->bnD:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 126
    iget-object v0, p0, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;->bnE:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;->bnA:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 129
    iget-object v1, p0, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;->bnB:Landroid/widget/TextView;

    .line 130
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v3

    const v4, 0x7f0704fa

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    .line 129
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {v3, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 135
    invoke-virtual {p0}, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 137
    const/4 v1, 0x0

    .line 138
    iget-object v0, p0, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;->bnA:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

    .line 139
    iget-object v6, v0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->url:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 144
    :try_start_0
    new-instance v6, Ljava/net/URL;

    iget-object v0, v0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->url:Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 149
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v0

    .line 150
    goto :goto_1

    .line 146
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_2

    .line 154
    :cond_2
    add-int/lit8 v1, v2, 0x1

    const/4 v6, 0x3

    if-lt v2, v6, :cond_4

    .line 167
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;->aci:Landroid/widget/Button;

    const v1, 0x7f0700c4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 168
    iget-object v0, p0, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;->aci:Landroid/widget/Button;

    new-instance v1, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity$3;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity$3;-><init>(Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v0, p0, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;->acj:Landroid/widget/Button;

    const v1, 0x7f0702e1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 178
    iget-object v0, p0, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;->acj:Landroid/widget/Button;

    new-instance v1, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity$4;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity$4;-><init>(Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 158
    :cond_4
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 159
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setLines(I)V

    .line 161
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 162
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 163
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v6, p0, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;->bnD:Landroid/view/ViewGroup;

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move v2, v1

    move-object v1, v0

    .line 165
    goto/16 :goto_1

    .line 188
    :cond_5
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18954

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 190
    iget-object v0, p0, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;->bnA:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

    .line 192
    if-nez v0, :cond_6

    .line 193
    invoke-virtual {p0}, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;->finish()V

    goto/16 :goto_0

    .line 197
    :cond_6
    iget-object v1, p0, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;->bnC:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    iget-object v1, p0, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;->bnD:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 199
    iget-object v1, p0, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;->bnE:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    iget-object v1, p0, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;->bnE:Landroid/widget/TextView;

    new-instance v2, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity$5;

    invoke-direct {v2, p0, v0}, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity$5;-><init>(Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-object v1, p0, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;->bnB:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v1, p0, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;->bnC:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->aaO()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v1, p0, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;->aci:Landroid/widget/Button;

    const v2, 0x7f0704dd

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 225
    iget-object v1, p0, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;->aci:Landroid/widget/Button;

    new-instance v2, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity$6;

    invoke-direct {v2, p0, v0}, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity$6;-><init>(Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    iget-object v1, p0, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;->acj:Landroid/widget/Button;

    new-instance v2, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity$7;

    invoke-direct {v2, p0, v0}, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity$7;-><init>(Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    iget-object v0, p0, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;->acj:Landroid/widget/Button;

    const v1, 0x7f0704de

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 287
    invoke-super {p0}, Lcom/kingroot/kinguser/activitys/KUBaseActivity;->onStop()V

    .line 288
    invoke-virtual {p0}, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDialogActivity;->finish()V

    .line 289
    return-void
.end method
