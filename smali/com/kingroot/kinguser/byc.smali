.class public Lcom/kingroot/kinguser/byc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final bRb:Lcom/kingroot/kinguser/bzc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/bzc",
            "<",
            "Lcom/kingroot/kinguser/byc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bTH:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/kingroot/kinguser/bye;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/kingroot/kinguser/byc$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/byc$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/byc;->bRb:Lcom/kingroot/kinguser/bzc;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/byc;->bTH:Ljava/util/Map;

    .line 39
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TuringMMTouch"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 41
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/kingroot/kinguser/byc;->mHandler:Landroid/os/Handler;

    .line 42
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/byc$1;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/kingroot/kinguser/byc;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/byc;Ljava/util/List;)Ljava/util/List;
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/byc;->cv(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/byc;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/kingroot/kinguser/byc;->bTH:Ljava/util/Map;

    return-object v0
.end method

.method private a(Landroid/content/Context;JJILjava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JJI",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/byb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v9, p0, Lcom/kingroot/kinguser/byc;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/kingroot/kinguser/byc$3;

    move-object v1, p0

    move-object/from16 v2, p7

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/kingroot/kinguser/byc$3;-><init>(Lcom/kingroot/kinguser/byc;Ljava/util/List;Landroid/content/Context;JJI)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 149
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/byc;Landroid/content/Context;JJILjava/util/List;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p7}, Lcom/kingroot/kinguser/byc;->a(Landroid/content/Context;JJILjava/util/List;)V

    return-void
.end method

.method public static ajQ()Lcom/kingroot/kinguser/byc;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/kingroot/kinguser/byc;->bRb:Lcom/kingroot/kinguser/bzc;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bzc;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/byc;

    return-object v0
.end method

.method private b(Landroid/content/Context;JJILjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JJI",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/byb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 183
    new-instance v1, Lcom/kingroot/kinguser/byu;

    invoke-direct {v1}, Lcom/kingroot/kinguser/byu;-><init>()V

    .line 184
    long-to-int v0, p4

    iput v0, v1, Lcom/kingroot/kinguser/byu;->duration:I

    .line 185
    iput-wide p2, v1, Lcom/kingroot/kinguser/byu;->bUT:J

    .line 187
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 188
    invoke-interface {p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/byb;

    .line 189
    new-instance v4, Lcom/kingroot/kinguser/byv;

    invoke-direct {v4}, Lcom/kingroot/kinguser/byv;-><init>()V

    .line 191
    iget v5, v0, Lcom/kingroot/kinguser/byb;->action:I

    packed-switch v5, :pswitch_data_0

    .line 209
    const/4 v5, 0x0

    iput v5, v4, Lcom/kingroot/kinguser/byv;->bUW:I

    .line 213
    :goto_1
    iget v5, v0, Lcom/kingroot/kinguser/byb;->bTF:F

    iput v5, v4, Lcom/kingroot/kinguser/byv;->x:F

    .line 214
    iget v5, v0, Lcom/kingroot/kinguser/byb;->bTG:F

    iput v5, v4, Lcom/kingroot/kinguser/byv;->y:F

    .line 215
    iget v5, v0, Lcom/kingroot/kinguser/byb;->pressure:F

    iput v5, v4, Lcom/kingroot/kinguser/byv;->bUX:F

    .line 216
    iget v0, v0, Lcom/kingroot/kinguser/byb;->size:F

    iput v0, v4, Lcom/kingroot/kinguser/byv;->bUY:F

    .line 218
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 193
    :pswitch_0
    const/4 v5, 0x1

    iput v5, v4, Lcom/kingroot/kinguser/byv;->bUW:I

    goto :goto_1

    .line 197
    :pswitch_1
    const/4 v5, 0x2

    iput v5, v4, Lcom/kingroot/kinguser/byv;->bUW:I

    goto :goto_1

    .line 201
    :pswitch_2
    const/4 v5, 0x3

    iput v5, v4, Lcom/kingroot/kinguser/byv;->bUW:I

    goto :goto_1

    .line 205
    :pswitch_3
    const/4 v5, 0x4

    iput v5, v4, Lcom/kingroot/kinguser/byv;->bUW:I

    goto :goto_1

    .line 221
    :cond_0
    iput-object v2, v1, Lcom/kingroot/kinguser/byu;->bUU:Ljava/util/ArrayList;

    .line 223
    invoke-static {}, Lcom/kingroot/kinguser/bya;->ajN()Lcom/kingroot/kinguser/bya;

    move-result-object v0

    invoke-virtual {v0, p1, p6, v1}, Lcom/kingroot/kinguser/bya;->a(Landroid/content/Context;ILcom/kingroot/kinguser/byu;)V

    .line 224
    return-void

    .line 191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic b(Lcom/kingroot/kinguser/byc;Landroid/content/Context;JJILjava/util/List;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p7}, Lcom/kingroot/kinguser/byc;->b(Landroid/content/Context;JJILjava/util/List;)V

    return-void
.end method

.method private cv(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/byb;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/byb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 153
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-gt v0, v1, :cond_0

    .line 155
    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 178
    :goto_0
    return-object v2

    .line 157
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/byb;

    .line 158
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/byb;

    .line 160
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 161
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 163
    const/16 v3, 0x12

    .line 164
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    int-to-float v4, v4

    int-to-float v3, v3

    div-float v3, v4, v3

    .line 165
    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    .line 167
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    const/4 v0, 0x1

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 170
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    add-int/2addr v0, v3

    goto :goto_1

    .line 173
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public cm(Landroid/content/Context;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/kingroot/kinguser/byr;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    invoke-static {}, Lcom/kingroot/kinguser/bya;->ajN()Lcom/kingroot/kinguser/bya;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/bya;->cm(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public d(ILandroid/view/View;)Z
    .locals 3

    .prologue
    .line 49
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    .line 50
    iget-object v1, p0, Lcom/kingroot/kinguser/byc;->bTH:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 52
    const/4 v0, 0x1

    .line 58
    :goto_0
    return v0

    .line 55
    :cond_0
    new-instance v1, Lcom/kingroot/kinguser/bye;

    invoke-direct {v1, p1}, Lcom/kingroot/kinguser/bye;-><init>(I)V

    .line 56
    iget-object v2, p0, Lcom/kingroot/kinguser/byc;->bTH:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-static {}, Lcom/kingroot/kinguser/byd;->ajS()Lcom/kingroot/kinguser/byd;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/byc$2;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/byc$2;-><init>(Lcom/kingroot/kinguser/byc;)V

    invoke-virtual {v0, p2, v1}, Lcom/kingroot/kinguser/byd;->a(Landroid/view/View;Lcom/kingroot/kinguser/byf;)Z

    move-result v0

    goto :goto_0
.end method
