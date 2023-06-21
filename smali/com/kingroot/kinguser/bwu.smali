.class public Lcom/kingroot/kinguser/bwu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private aFH:I

.field private final bSJ:I

.field private final bSK:I

.field private final bSL:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(III)V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/kingroot/kinguser/bwu;->bSJ:I

    .line 31
    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float v1, p3

    mul-float/2addr v0, v1

    int-to-float v1, p2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/kingroot/kinguser/bwu;->mValues:[Ljava/lang/Object;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/bwu;->aFH:I

    .line 33
    iput p3, p0, Lcom/kingroot/kinguser/bwu;->bSK:I

    .line 34
    iput p2, p0, Lcom/kingroot/kinguser/bwu;->bSL:I

    .line 35
    return-void
.end method

.method private kL(I)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/bys;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 83
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 84
    iget-object v0, p0, Lcom/kingroot/kinguser/bwu;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Ljava/util/List;

    .line 85
    if-nez v0, :cond_0

    move-object v0, v4

    .line 97
    :goto_0
    return-object v0

    :cond_0
    move v2, v3

    .line 87
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 88
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/bwv;

    .line 89
    new-instance v5, Lcom/kingroot/kinguser/bys;

    invoke-direct {v5}, Lcom/kingroot/kinguser/bys;-><init>()V

    .line 90
    iget-object v6, v1, Lcom/kingroot/kinguser/bwv;->values:[F

    aget v6, v6, v3

    iput v6, v5, Lcom/kingroot/kinguser/bys;->x:F

    .line 91
    iget-object v6, v1, Lcom/kingroot/kinguser/bwv;->values:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    iput v6, v5, Lcom/kingroot/kinguser/bys;->y:F

    .line 92
    iget-object v6, v1, Lcom/kingroot/kinguser/bwv;->values:[F

    const/4 v7, 0x2

    aget v6, v6, v7

    iput v6, v5, Lcom/kingroot/kinguser/bys;->z:F

    .line 93
    iget-wide v6, v1, Lcom/kingroot/kinguser/bwv;->timestamp:J

    iput-wide v6, v5, Lcom/kingroot/kinguser/bys;->bUO:J

    .line 94
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_1
    move-object v0, v4

    .line 97
    goto :goto_0
.end method


# virtual methods
.method public a(ILcom/kingroot/kinguser/bwv;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 39
    iget v1, p0, Lcom/kingroot/kinguser/bwu;->bSK:I

    if-lt p1, v1, :cond_1

    .line 64
    :cond_0
    :goto_0
    return v0

    .line 45
    :cond_1
    iget v1, p0, Lcom/kingroot/kinguser/bwu;->aFH:I

    if-le p1, v1, :cond_0

    .line 50
    iget v0, p0, Lcom/kingroot/kinguser/bwu;->bSL:I

    div-int v1, p1, v0

    .line 54
    iget-object v0, p0, Lcom/kingroot/kinguser/bwu;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Ljava/util/List;

    .line 55
    if-nez v0, :cond_2

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    iget-object v2, p0, Lcom/kingroot/kinguser/bwu;->mValues:[Ljava/lang/Object;

    aput-object v0, v2, v1

    .line 59
    :cond_2
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    iput p1, p0, Lcom/kingroot/kinguser/bwu;->aFH:I

    .line 64
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public aja()I
    .locals 3

    .prologue
    const/4 v0, 0x4

    .line 101
    iget v1, p0, Lcom/kingroot/kinguser/bwu;->bSJ:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 102
    const/4 v0, 0x0

    .line 109
    :cond_0
    :goto_0
    return v0

    .line 103
    :cond_1
    iget v1, p0, Lcom/kingroot/kinguser/bwu;->bSJ:I

    if-ne v1, v0, :cond_2

    .line 104
    const/4 v0, 0x2

    goto :goto_0

    .line 105
    :cond_2
    iget v1, p0, Lcom/kingroot/kinguser/bwu;->bSJ:I

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    .line 109
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public ajb()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/kingroot/kinguser/bwu;->mValues:[Ljava/lang/Object;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public ajc()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 165
    move v1, v0

    move v2, v0

    .line 166
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bwu;->mValues:[Ljava/lang/Object;

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/kingroot/kinguser/bwu;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Ljava/util/List;

    .line 168
    if-nez v0, :cond_0

    .line 166
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 169
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 171
    :cond_1
    return v2
.end method

.method public cu(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bww;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/byt;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 115
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 116
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bwu;->mValues:[Ljava/lang/Object;

    array-length v0, v0

    if-ge v1, v0, :cond_3

    .line 117
    iget-object v0, p0, Lcom/kingroot/kinguser/bwu;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Ljava/util/List;

    .line 118
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 116
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 120
    :cond_1
    new-instance v4, Lcom/kingroot/kinguser/byt;

    invoke-direct {v4}, Lcom/kingroot/kinguser/byt;-><init>()V

    .line 123
    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/bwu;->kL(I)Ljava/util/ArrayList;

    move-result-object v5

    .line 124
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 125
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bwu;->aja()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iput-object v6, v4, Lcom/kingroot/kinguser/byt;->bUQ:Ljava/util/Map;

    .line 130
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bwv;

    .line 131
    if-eqz v0, :cond_0

    .line 134
    iget-wide v6, v0, Lcom/kingroot/kinguser/bwv;->timestamp:J

    iput-wide v6, v4, Lcom/kingroot/kinguser/byt;->bUP:J

    .line 137
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 138
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bww;

    .line 139
    if-eqz v0, :cond_2

    .line 140
    iget v5, v0, Lcom/kingroot/kinguser/bww;->bSN:I

    iput v5, v4, Lcom/kingroot/kinguser/byt;->bSN:I

    .line 141
    iget v5, v0, Lcom/kingroot/kinguser/bww;->bSO:I

    iput v5, v4, Lcom/kingroot/kinguser/byt;->bSO:I

    .line 142
    iget v5, v0, Lcom/kingroot/kinguser/bww;->bSP:I

    iput v5, v4, Lcom/kingroot/kinguser/byt;->bSP:I

    .line 143
    iget v0, v0, Lcom/kingroot/kinguser/bww;->bSQ:I

    iput v0, v4, Lcom/kingroot/kinguser/byt;->bSQ:I

    .line 147
    :cond_2
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 150
    :cond_3
    return-object v3
.end method
