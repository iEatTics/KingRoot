.class public Lcom/kingroot/kinguser/asz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final aNI:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/asz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    new-instance v0, Lcom/kingroot/kinguser/asz$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/asz$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/asz;->aNI:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OL()Lcom/kingroot/kinguser/asz;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/kingroot/kinguser/asz;->aNI:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/asz;

    return-object v0
.end method


# virtual methods
.method public OM()Lcom/kingroot/kinguser/ate;
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/kingroot/kinguser/ata;->OO()Lcom/kingroot/kinguser/ata;

    move-result-object v0

    return-object v0
.end method
