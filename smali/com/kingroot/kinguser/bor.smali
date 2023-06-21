.class public final Lcom/kingroot/kinguser/bor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kingroot/kinguser/bol;


# static fields
.field private static bFI:Lcom/kingroot/kinguser/bor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kingroot/kinguser/bor;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bor;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bor;->bFI:Lcom/kingroot/kinguser/bor;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/kingroot/kinguser/bot;->agK()Lcom/kingroot/kinguser/bot;

    invoke-static {}, Lcom/kingroot/kinguser/boi;->agB()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bos;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bos;-><init>(Lcom/kingroot/kinguser/bor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static agJ()Lcom/kingroot/kinguser/bor;
    .locals 1

    sget-object v0, Lcom/kingroot/kinguser/bor;->bFI:Lcom/kingroot/kinguser/bor;

    return-object v0
.end method


# virtual methods
.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/boo;J)Lcom/kingroot/kinguser/bom;
    .locals 11

    const-string v10, ""

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    invoke-virtual/range {v1 .. v10}, Lcom/kingroot/kinguser/bor;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/boo;JLjava/lang/String;)Lcom/kingroot/kinguser/bom;

    move-result-object v0

    return-object v0
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/boo;JLjava/lang/String;)Lcom/kingroot/kinguser/bom;
    .locals 11

    const-string v0, ""

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "url is empty."

    :cond_0
    :goto_0
    invoke-static {p4}, Lcom/kingroot/kinguser/bok;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/kingroot/kinguser/bnz;->e()Ljava/lang/String;

    move-result-object v5

    :goto_1
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/kingroot/kinguser/bnx;

    invoke-direct {v1, v0}, Lcom/kingroot/kinguser/bnx;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-nez p6, :cond_0

    const-string v0, "listener is null."

    goto :goto_0

    :cond_2
    new-instance v4, Lcom/kingroot/kinguser/bph;

    invoke-direct {v4, p3}, Lcom/kingroot/kinguser/bph;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/kingroot/kinguser/bpi;

    move v2, p1

    move-object v3, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lcom/kingroot/kinguser/bpi;-><init>(ILjava/lang/String;Lcom/kingroot/kinguser/bph;Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/boo;J)V

    return-object v1

    :cond_3
    move-object v5, p4

    goto :goto_1
.end method

.method public final a(Lcom/kingroot/kinguser/bom;Z)V
    .locals 1

    invoke-static {}, Lcom/kingroot/kinguser/bot;->agK()Lcom/kingroot/kinguser/bot;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/kingroot/kinguser/bot;->b(Lcom/kingroot/kinguser/bom;Z)V

    return-void
.end method

.method public final a(Lcom/kingroot/kinguser/bon;I)V
    .locals 1

    invoke-static {}, Lcom/kingroot/kinguser/bpr;->ahd()Lcom/kingroot/kinguser/bpr;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/kingroot/kinguser/bpr;->b(Lcom/kingroot/kinguser/bon;I)V

    return-void
.end method

.method public final agC()Ljava/util/List;
    .locals 1

    invoke-static {}, Lcom/kingroot/kinguser/bot;->agK()Lcom/kingroot/kinguser/bot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bot;->agL()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final o(Lcom/kingroot/kinguser/bom;)V
    .locals 1

    invoke-static {}, Lcom/kingroot/kinguser/bot;->agK()Lcom/kingroot/kinguser/bot;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/bot;->p(Lcom/kingroot/kinguser/bom;)V

    return-void
.end method
