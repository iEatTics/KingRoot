.class public Lcom/kingroot/kinguser/bdo;
.super Lcom/kingroot/kinguser/bdm;
.source "SourceFile"


# instance fields
.field private bjq:I

.field private bjr:I

.field private bjs:I

.field private bjt:I

.field private bju:I

.field private bjv:I

.field private bjw:I

.field private bjx:I

.field bjy:I

.field mReqType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Lcom/kingroot/kinguser/bdm;-><init>()V

    .line 22
    iput v1, p0, Lcom/kingroot/kinguser/bdo;->bjq:I

    .line 23
    iput v1, p0, Lcom/kingroot/kinguser/bdo;->bjr:I

    .line 24
    iput v1, p0, Lcom/kingroot/kinguser/bdo;->bjs:I

    .line 25
    iput v1, p0, Lcom/kingroot/kinguser/bdo;->bjt:I

    .line 26
    iput v1, p0, Lcom/kingroot/kinguser/bdo;->bju:I

    .line 27
    iput v1, p0, Lcom/kingroot/kinguser/bdo;->bjv:I

    .line 28
    iput v1, p0, Lcom/kingroot/kinguser/bdo;->bjw:I

    .line 29
    iput v1, p0, Lcom/kingroot/kinguser/bdo;->bjx:I

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingroot/kinguser/bdo;->mReqType:I

    .line 31
    iput v1, p0, Lcom/kingroot/kinguser/bdo;->bjy:I

    .line 34
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/bdo;->la(Ljava/lang/String;)V

    .line 37
    :cond_0
    return-void
.end method


# virtual methods
.method public YF()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    iget-object v1, p0, Lcom/kingroot/kinguser/bdo;->adZ:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v1, p0, Lcom/kingroot/kinguser/bdo;->bjk:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v1, p0, Lcom/kingroot/kinguser/bdo;->mVersionName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget v1, p0, Lcom/kingroot/kinguser/bdo;->ads:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bdo;->YG()[I

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bdo;->YI()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bdo;->YH()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bdo;->YJ()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bdo;->bO(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected YG()[I
    .locals 3

    .prologue
    .line 114
    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 115
    const/4 v1, 0x0

    iget v2, p0, Lcom/kingroot/kinguser/bdo;->bjq:I

    aput v2, v0, v1

    .line 116
    const/4 v1, 0x1

    iget v2, p0, Lcom/kingroot/kinguser/bdo;->bjr:I

    aput v2, v0, v1

    .line 117
    const/4 v1, 0x2

    iget v2, p0, Lcom/kingroot/kinguser/bdo;->bjs:I

    aput v2, v0, v1

    .line 118
    const/4 v1, 0x3

    iget v2, p0, Lcom/kingroot/kinguser/bdo;->bjt:I

    aput v2, v0, v1

    .line 119
    const/4 v1, 0x4

    iget v2, p0, Lcom/kingroot/kinguser/bdo;->bju:I

    aput v2, v0, v1

    .line 120
    const/4 v1, 0x5

    iget v2, p0, Lcom/kingroot/kinguser/bdo;->bjv:I

    aput v2, v0, v1

    .line 121
    const/4 v1, 0x6

    iget v2, p0, Lcom/kingroot/kinguser/bdo;->bjw:I

    aput v2, v0, v1

    .line 122
    const/4 v1, 0x7

    iget v2, p0, Lcom/kingroot/kinguser/bdo;->bjx:I

    aput v2, v0, v1

    .line 124
    return-object v0
.end method

.method YH()I
    .locals 4

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 156
    .line 157
    iget-object v2, p0, Lcom/kingroot/kinguser/bdo;->adZ:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 158
    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/bdo;->adZ:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/bbt;->getRuleType(Ljava/lang/String;)I

    move-result v2

    .line 159
    if-ne v0, v2, :cond_1

    .line 160
    const/4 v0, 0x0

    .line 168
    :cond_0
    :goto_0
    return v0

    .line 161
    :cond_1
    if-eqz v2, :cond_0

    move v0, v1

    .line 164
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method YI()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/kingroot/kinguser/bdo;->mReqType:I

    return v0
.end method

.method public YJ()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/kingroot/kinguser/bdo;->bjy:I

    return v0
.end method

.method public ah(II)V
    .locals 2

    .prologue
    .line 65
    packed-switch p1, :pswitch_data_0

    .line 93
    :goto_0
    iget v0, p0, Lcom/kingroot/kinguser/bdo;->bjr:I

    iget v1, p0, Lcom/kingroot/kinguser/bdo;->bjs:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/kingroot/kinguser/bdo;->bjq:I

    .line 94
    return-void

    .line 67
    :pswitch_0
    iget v0, p0, Lcom/kingroot/kinguser/bdo;->bjr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/bdo;->bjr:I

    goto :goto_0

    .line 70
    :pswitch_1
    iget v0, p0, Lcom/kingroot/kinguser/bdo;->bjs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/bdo;->bjs:I

    goto :goto_0

    .line 73
    :pswitch_2
    iget v0, p0, Lcom/kingroot/kinguser/bdo;->bjr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/bdo;->bjr:I

    .line 74
    iget v0, p0, Lcom/kingroot/kinguser/bdo;->bjt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/bdo;->bjt:I

    goto :goto_0

    .line 77
    :pswitch_3
    iget v0, p0, Lcom/kingroot/kinguser/bdo;->bjs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/bdo;->bjs:I

    .line 78
    iget v0, p0, Lcom/kingroot/kinguser/bdo;->bju:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/bdo;->bju:I

    goto :goto_0

    .line 81
    :pswitch_4
    iget v0, p0, Lcom/kingroot/kinguser/bdo;->bjv:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/bdo;->bjv:I

    goto :goto_0

    .line 84
    :pswitch_5
    iget v0, p0, Lcom/kingroot/kinguser/bdo;->bjw:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/bdo;->bjw:I

    goto :goto_0

    .line 87
    :pswitch_6
    iget v0, p0, Lcom/kingroot/kinguser/bdo;->bjx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/bdo;->bjx:I

    goto :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public io(I)V
    .locals 0

    .prologue
    .line 175
    iput p1, p0, Lcom/kingroot/kinguser/bdo;->mReqType:I

    .line 176
    return-void
.end method

.method public ip(I)V
    .locals 0

    .prologue
    .line 189
    iput p1, p0, Lcom/kingroot/kinguser/bdo;->bjy:I

    .line 190
    return-void
.end method

.method protected kZ(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 129
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 134
    array-length v1, v0

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 136
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/kingroot/kinguser/bdo;->bjq:I

    .line 137
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/kingroot/kinguser/bdo;->bjr:I

    .line 138
    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/kingroot/kinguser/bdo;->bjs:I

    .line 139
    const/4 v1, 0x3

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/kingroot/kinguser/bdo;->bjt:I

    .line 140
    const/4 v1, 0x4

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/kingroot/kinguser/bdo;->bju:I

    .line 141
    const/4 v1, 0x5

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/kingroot/kinguser/bdo;->bjv:I

    .line 142
    const/4 v1, 0x6

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/kingroot/kinguser/bdo;->bjw:I

    .line 143
    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/bdo;->bjx:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected la(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/bdo;->kY(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_0

    array-length v1, v0

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 42
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/kingroot/kinguser/bdo;->adZ:Ljava/lang/String;

    .line 43
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/kingroot/kinguser/bdo;->bjk:Ljava/lang/String;

    .line 44
    const/4 v1, 0x2

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/kingroot/kinguser/bdo;->mVersionName:Ljava/lang/String;

    .line 47
    const/4 v1, 0x3

    :try_start_0
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/kingroot/kinguser/bdo;->ads:I

    .line 48
    const/4 v1, 0x4

    aget-object v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/kingroot/kinguser/bdo;->kZ(Ljava/lang/String;)V

    .line 49
    const/4 v1, 0x5

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/kingroot/kinguser/bdo;->mReqType:I

    .line 50
    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/bdo;->bjy:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    goto :goto_0
.end method
