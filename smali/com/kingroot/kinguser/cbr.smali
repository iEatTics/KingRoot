.class public Lcom/kingroot/kinguser/cbr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final xY:Lcom/kingroot/kinguser/ccd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/ccd",
            "<",
            "Lcom/kingroot/kinguser/cbr;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/kingroot/kinguser/cbs;

    invoke-direct {v0}, Lcom/kingroot/kinguser/cbs;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/cbr;->xY:Lcom/kingroot/kinguser/ccd;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static akD()Lcom/kingroot/kinguser/cbr;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/kingroot/kinguser/cbr;->xY:Lcom/kingroot/kinguser/ccd;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ccd;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/cbr;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/cbq;)V
    .locals 5

    .prologue
    .line 45
    new-instance v0, Lcom/kingroot/kinguser/s;

    invoke-direct {v0}, Lcom/kingroot/kinguser/s;-><init>()V

    .line 46
    const/4 v1, 0x0

    iput v1, v0, Lcom/kingroot/kinguser/s;->gg:I

    .line 47
    const/16 v1, 0xc8

    iput v1, v0, Lcom/kingroot/kinguser/s;->gh:I

    .line 49
    new-instance v1, Lcom/kingroot/kinguser/ae;

    invoke-direct {v1}, Lcom/kingroot/kinguser/ae;-><init>()V

    .line 50
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/kingroot/kinguser/ae;->gQ:Ljava/util/ArrayList;

    .line 52
    invoke-static {}, Lcom/kingroot/kinguser/cav;->akt()Lcom/kingroot/kinguser/cav;

    move-result-object v2

    const/16 v3, 0xb

    new-instance v4, Lcom/kingroot/kinguser/cbt;

    invoke-direct {v4, p0, p1}, Lcom/kingroot/kinguser/cbt;-><init>(Lcom/kingroot/kinguser/cbr;Lcom/kingroot/kinguser/cbq;)V

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/kingroot/kinguser/cav;->a(ILcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;Lcom/kingroot/kinguser/cat;)V

    .line 78
    return-void
.end method
