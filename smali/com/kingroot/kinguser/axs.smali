.class public Lcom/kingroot/kinguser/axs;
.super Lcom/kingroot/kinguser/yl;
.source "SourceFile"


# instance fields
.field protected alr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/auc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/yl;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/axs;->alr:Ljava/util/ArrayList;

    .line 24
    return-void
.end method


# virtual methods
.method protected UF()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lcom/kingroot/kinguser/auc;

    invoke-direct {v0}, Lcom/kingroot/kinguser/auc;-><init>()V

    .line 56
    const/4 v1, 0x6

    iput v1, v0, Lcom/kingroot/kinguser/auc;->mType:I

    .line 57
    iget-object v1, p0, Lcom/kingroot/kinguser/axs;->alr:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method

.method protected a(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILcom/kingroot/kinguser/bhu$a;)V
    .locals 2

    .prologue
    .line 137
    new-instance v0, Lcom/kingroot/kinguser/auc;

    invoke-direct {v0}, Lcom/kingroot/kinguser/auc;-><init>()V

    .line 138
    const/4 v1, 0x2

    iput v1, v0, Lcom/kingroot/kinguser/auc;->mType:I

    .line 139
    iput p1, v0, Lcom/kingroot/kinguser/auc;->aQX:I

    .line 140
    iput p2, v0, Lcom/kingroot/kinguser/auc;->mIconResId:I

    .line 141
    iput-object p3, v0, Lcom/kingroot/kinguser/auc;->aQY:Ljava/lang/String;

    .line 142
    iput-object p4, v0, Lcom/kingroot/kinguser/auc;->aRa:Ljava/lang/String;

    .line 143
    iput-object p5, v0, Lcom/kingroot/kinguser/auc;->aRe:[Ljava/lang/String;

    .line 144
    iput p6, v0, Lcom/kingroot/kinguser/auc;->aRf:I

    .line 145
    iput-object p7, v0, Lcom/kingroot/kinguser/auc;->aRg:Lcom/kingroot/kinguser/bhu$a;

    .line 146
    iget-object v1, p0, Lcom/kingroot/kinguser/axs;->alr:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    return-void
.end method

.method protected a(IILjava/lang/String;ZLcom/kingroot/kinguser/agg$a;)V
    .locals 2

    .prologue
    .line 111
    new-instance v0, Lcom/kingroot/kinguser/auc;

    invoke-direct {v0}, Lcom/kingroot/kinguser/auc;-><init>()V

    .line 112
    const/4 v1, 0x3

    iput v1, v0, Lcom/kingroot/kinguser/auc;->mType:I

    .line 113
    iput p1, v0, Lcom/kingroot/kinguser/auc;->aQX:I

    .line 114
    iput p2, v0, Lcom/kingroot/kinguser/auc;->mIconResId:I

    .line 115
    iput-object p3, v0, Lcom/kingroot/kinguser/auc;->aQY:Ljava/lang/String;

    .line 116
    const-string v1, ""

    iput-object v1, v0, Lcom/kingroot/kinguser/auc;->aRa:Ljava/lang/String;

    .line 117
    iput-boolean p4, v0, Lcom/kingroot/kinguser/auc;->aRh:Z

    .line 118
    iput-object p5, v0, Lcom/kingroot/kinguser/auc;->aRj:Lcom/kingroot/kinguser/agg$a;

    .line 119
    iget-object v1, p0, Lcom/kingroot/kinguser/axs;->alr:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method

.method protected a(IILjava/lang/String;ZZLcom/kingroot/kinguser/agg$a;)V
    .locals 2

    .prologue
    .line 87
    new-instance v0, Lcom/kingroot/kinguser/auc;

    invoke-direct {v0}, Lcom/kingroot/kinguser/auc;-><init>()V

    .line 88
    const/4 v1, 0x3

    iput v1, v0, Lcom/kingroot/kinguser/auc;->mType:I

    .line 89
    iput p1, v0, Lcom/kingroot/kinguser/auc;->aQX:I

    .line 90
    iput p2, v0, Lcom/kingroot/kinguser/auc;->mIconResId:I

    .line 91
    iput-object p3, v0, Lcom/kingroot/kinguser/auc;->aQY:Ljava/lang/String;

    .line 92
    const-string v1, ""

    iput-object v1, v0, Lcom/kingroot/kinguser/auc;->aRa:Ljava/lang/String;

    .line 93
    iput-boolean p4, v0, Lcom/kingroot/kinguser/auc;->aRh:Z

    .line 94
    iput-object p6, v0, Lcom/kingroot/kinguser/auc;->aRj:Lcom/kingroot/kinguser/agg$a;

    .line 95
    iput-boolean p5, v0, Lcom/kingroot/kinguser/auc;->aRi:Z

    .line 96
    iget-object v1, p0, Lcom/kingroot/kinguser/axs;->alr:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    return-void
.end method

.method protected a(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;[Ljava/lang/String;ILcom/kingroot/kinguser/bhu$a;)V
    .locals 2

    .prologue
    .line 151
    new-instance v0, Lcom/kingroot/kinguser/auc;

    invoke-direct {v0}, Lcom/kingroot/kinguser/auc;-><init>()V

    .line 152
    const/16 v1, 0xc

    iput v1, v0, Lcom/kingroot/kinguser/auc;->mType:I

    .line 153
    iput p1, v0, Lcom/kingroot/kinguser/auc;->aQX:I

    .line 154
    iput-object p2, v0, Lcom/kingroot/kinguser/auc;->aQY:Ljava/lang/String;

    .line 155
    iput-object p3, v0, Lcom/kingroot/kinguser/auc;->aRa:Ljava/lang/String;

    .line 156
    iput-object p4, v0, Lcom/kingroot/kinguser/auc;->aRd:Landroid/graphics/drawable/Drawable;

    .line 157
    iput-object p5, v0, Lcom/kingroot/kinguser/auc;->aRe:[Ljava/lang/String;

    .line 158
    iput p6, v0, Lcom/kingroot/kinguser/auc;->aRf:I

    .line 159
    iput-object p7, v0, Lcom/kingroot/kinguser/auc;->aRg:Lcom/kingroot/kinguser/bhu$a;

    .line 160
    iget-object v1, p0, Lcom/kingroot/kinguser/axs;->alr:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    return-void
.end method

.method protected a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILcom/kingroot/kinguser/bhu$a;)V
    .locals 2

    .prologue
    .line 124
    new-instance v0, Lcom/kingroot/kinguser/auc;

    invoke-direct {v0}, Lcom/kingroot/kinguser/auc;-><init>()V

    .line 125
    const/4 v1, 0x2

    iput v1, v0, Lcom/kingroot/kinguser/auc;->mType:I

    .line 126
    iput p1, v0, Lcom/kingroot/kinguser/auc;->aQX:I

    .line 127
    iput-object p2, v0, Lcom/kingroot/kinguser/auc;->aQY:Ljava/lang/String;

    .line 128
    iput-object p3, v0, Lcom/kingroot/kinguser/auc;->aRa:Ljava/lang/String;

    .line 129
    iput-object p4, v0, Lcom/kingroot/kinguser/auc;->aRe:[Ljava/lang/String;

    .line 130
    iput p5, v0, Lcom/kingroot/kinguser/auc;->aRf:I

    .line 131
    iput-object p6, v0, Lcom/kingroot/kinguser/auc;->aRg:Lcom/kingroot/kinguser/bhu$a;

    .line 132
    iget-object v1, p0, Lcom/kingroot/kinguser/axs;->alr:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    return-void
.end method

.method protected a([Ljava/lang/String;ILcom/kingroot/kinguser/auc$a;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 204
    if-nez p1, :cond_1

    .line 223
    :cond_0
    return-void

    .line 207
    :cond_1
    if-ltz p2, :cond_0

    array-length v0, p1

    if-ge p2, v0, :cond_0

    move v0, v1

    .line 211
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axs;->UF()V

    .line 214
    new-instance v3, Lcom/kingroot/kinguser/auc;

    invoke-direct {v3}, Lcom/kingroot/kinguser/auc;-><init>()V

    .line 215
    const/16 v2, 0x9

    iput v2, v3, Lcom/kingroot/kinguser/auc;->mType:I

    .line 216
    aget-object v2, p1, v0

    iput-object v2, v3, Lcom/kingroot/kinguser/auc;->aQY:Ljava/lang/String;

    .line 217
    if-ne v0, p2, :cond_2

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, v3, Lcom/kingroot/kinguser/auc;->mSelected:Z

    .line 218
    iput-object p3, v3, Lcom/kingroot/kinguser/auc;->aRk:Lcom/kingroot/kinguser/auc$a;

    .line 219
    iput v0, v3, Lcom/kingroot/kinguser/auc;->mPos:I

    .line 220
    iget-object v2, p0, Lcom/kingroot/kinguser/axs;->alr:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v2, v1

    .line 217
    goto :goto_1
.end method

.method protected aG(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 190
    new-instance v0, Lcom/kingroot/kinguser/auc;

    invoke-direct {v0}, Lcom/kingroot/kinguser/auc;-><init>()V

    .line 191
    const/16 v1, 0xb

    iput v1, v0, Lcom/kingroot/kinguser/auc;->mType:I

    .line 192
    iput-object p1, v0, Lcom/kingroot/kinguser/auc;->aRb:Ljava/lang/String;

    .line 193
    iput-object p2, v0, Lcom/kingroot/kinguser/auc;->aRc:Ljava/lang/String;

    .line 194
    iget-object v1, p0, Lcom/kingroot/kinguser/axs;->alr:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    return-void
.end method

.method protected g(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 181
    new-instance v0, Lcom/kingroot/kinguser/auc;

    invoke-direct {v0}, Lcom/kingroot/kinguser/auc;-><init>()V

    .line 182
    const/16 v1, 0xa

    iput v1, v0, Lcom/kingroot/kinguser/auc;->mType:I

    .line 183
    iput-object p1, v0, Lcom/kingroot/kinguser/auc;->CJ:Ljava/lang/String;

    .line 184
    iput-object p2, v0, Lcom/kingroot/kinguser/auc;->aRc:Ljava/lang/String;

    .line 185
    iput p3, v0, Lcom/kingroot/kinguser/auc;->mIconResId:I

    .line 186
    iget-object v1, p0, Lcom/kingroot/kinguser/axs;->alr:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    return-void
.end method

.method protected getAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method protected ka(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 173
    new-instance v0, Lcom/kingroot/kinguser/auc;

    invoke-direct {v0}, Lcom/kingroot/kinguser/auc;-><init>()V

    .line 174
    const/4 v1, 0x0

    iput v1, v0, Lcom/kingroot/kinguser/auc;->mType:I

    .line 175
    iput-object p1, v0, Lcom/kingroot/kinguser/auc;->aQY:Ljava/lang/String;

    .line 176
    const-string v1, ""

    iput-object v1, v0, Lcom/kingroot/kinguser/auc;->aRa:Ljava/lang/String;

    .line 177
    iget-object v1, p0, Lcom/kingroot/kinguser/axs;->alr:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    return-void
.end method

.method protected oI()V
    .locals 2

    .prologue
    .line 50
    invoke-super {p0}, Lcom/kingroot/kinguser/yl;->oI()V

    .line 51
    iget-object v0, p0, Lcom/kingroot/kinguser/axs;->Vd:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 52
    return-void
.end method

.method protected oJ()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method
