.class public Lcom/kingroot/kinguser/bxc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bxc$b;,
        Lcom/kingroot/kinguser/bxc$a;
    }
.end annotation


# static fields
.field private static final bSX:Lcom/kingroot/kinguser/bxa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/bxa",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bSY:Ljava/lang/String;

.field private bSZ:Lcom/kingroot/kinguser/bxc$a;

.field private id:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/kingroot/kinguser/bxa;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bxa;-><init>(I)V

    sput-object v0, Lcom/kingroot/kinguser/bxc;->bSX:Lcom/kingroot/kinguser/bxa;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/bxc;->bSY:Ljava/lang/String;

    .line 35
    return-void
.end method

.method private Q(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 58
    if-nez p1, :cond_0

    .line 59
    const/4 v0, 0x0

    .line 63
    :goto_0
    return v0

    .line 62
    :cond_0
    new-instance v0, Lcom/kingroot/kinguser/bxc$b;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bxc$b;-><init>(Lcom/kingroot/kinguser/bxc;)V

    .line 63
    invoke-static {}, Lcom/kingroot/kinguser/byd;->ajS()Lcom/kingroot/kinguser/byd;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/kingroot/kinguser/byd;->a(Landroid/view/View;Lcom/kingroot/kinguser/byf;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bxc;)I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/kingroot/kinguser/bxc;->id:I

    return v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bxc;ILandroid/view/View;I)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/kingroot/kinguser/bxc;->b(ILandroid/view/View;I)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bxc;Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bxc;->f(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private ajm()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 160
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/kingroot/kinguser/bxc;->bSY:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 176
    :cond_0
    :goto_0
    return v0

    .line 165
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 166
    if-eqz v2, :cond_0

    array-length v1, v2

    if-eqz v1, :cond_0

    .line 170
    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 171
    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 172
    const/4 v0, 0x1

    goto :goto_0

    .line 170
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private ajn()Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    .line 181
    sget-object v0, Lcom/kingroot/kinguser/bxc;->bSX:Lcom/kingroot/kinguser/bxa;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bxa;->size()I

    move-result v0

    if-ge v0, v5, :cond_1

    .line 206
    :cond_0
    :goto_0
    return v3

    .line 185
    :cond_1
    const/4 v0, 0x0

    .line 186
    sget-object v1, Lcom/kingroot/kinguser/bxc;->bSX:Lcom/kingroot/kinguser/bxa;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bxa;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    .line 187
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 188
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    goto :goto_1

    .line 191
    :cond_2
    if-eqz v1, :cond_0

    .line 196
    sget-object v0, Lcom/kingroot/kinguser/bxc;->bSX:Lcom/kingroot/kinguser/bxa;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bxa;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v3

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 198
    add-int/lit8 v0, v2, 0x1

    :goto_3
    move v2, v0

    .line 200
    goto :goto_2

    .line 202
    :cond_3
    if-lt v2, v5, :cond_0

    .line 204
    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_3
.end method

.method private b(ILandroid/view/View;I)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/kingroot/kinguser/bxc;->bSZ:Lcom/kingroot/kinguser/bxc$a;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/kingroot/kinguser/bxc;->bSZ:Lcom/kingroot/kinguser/bxc$a;

    invoke-interface {v0, p1, p2, p3}, Lcom/kingroot/kinguser/bxc$a;->a(ILandroid/view/View;I)V

    .line 70
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/bxc;)Z
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/kingroot/kinguser/bxc;->ajn()Z

    move-result v0

    return v0
.end method

.method private f(Landroid/view/MotionEvent;)V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 141
    invoke-direct {p0}, Lcom/kingroot/kinguser/bxc;->ajm()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    :goto_0
    return-void

    .line 146
    :cond_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-double v2, v1

    invoke-direct {v0, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v0, v4, v5}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    .line 147
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-double v2, v2

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v1, v4, v5}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    .line 148
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v2

    .line 150
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    invoke-virtual {v0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 156
    sget-object v0, Lcom/kingroot/kinguser/bxc;->bSX:Lcom/kingroot/kinguser/bxa;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/bxa;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/View;Lcom/kingroot/kinguser/bxc$a;I)Z
    .locals 1

    .prologue
    .line 42
    iput-object p2, p0, Lcom/kingroot/kinguser/bxc;->bSZ:Lcom/kingroot/kinguser/bxc$a;

    .line 43
    iput p3, p0, Lcom/kingroot/kinguser/bxc;->id:I

    .line 44
    sget-object v0, Lcom/kingroot/kinguser/bwo;->bSp:[I

    invoke-static {v0}, Lcom/kingroot/kinguser/bwo;->k([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bxc;->bSY:Ljava/lang/String;

    .line 45
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bxc;->Q(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
