.class public Lcom/kingroot/kinguser/abv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/abv;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ZX:Lcom/kingroot/kinguser/abs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/kingroot/kinguser/abv$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/abv$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/abv;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/abv;->ZX:Lcom/kingroot/kinguser/abs;

    .line 12
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ir()Lcom/kingroot/kinguser/abs;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/abv;->ZX:Lcom/kingroot/kinguser/abs;

    .line 13
    iget-object v0, p0, Lcom/kingroot/kinguser/abv;->ZX:Lcom/kingroot/kinguser/abs;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lcom/kingroot/kinguser/abt;

    invoke-direct {v0}, Lcom/kingroot/kinguser/abt;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/abv;->ZX:Lcom/kingroot/kinguser/abs;

    .line 16
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/abv$1;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/kingroot/kinguser/abv;-><init>()V

    return-void
.end method

.method public static ry()Lcom/kingroot/kinguser/abv;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/kingroot/kinguser/abv;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/abv;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/abs;)V
    .locals 1

    .prologue
    .line 42
    if-nez p1, :cond_1

    .line 43
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ir()Lcom/kingroot/kinguser/abs;

    move-result-object v0

    .line 46
    :goto_0
    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/kingroot/kinguser/abt;

    invoke-direct {v0}, Lcom/kingroot/kinguser/abt;-><init>()V

    .line 50
    :cond_0
    iput-object v0, p0, Lcom/kingroot/kinguser/abv;->ZX:Lcom/kingroot/kinguser/abs;

    .line 51
    return-void

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method public rr()Lcom/kingroot/kinguser/abm;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/kingroot/kinguser/abv;->ZX:Lcom/kingroot/kinguser/abs;

    if-nez v0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/abv;->ZX:Lcom/kingroot/kinguser/abs;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/abs;->rr()Lcom/kingroot/kinguser/abm;

    move-result-object v0

    goto :goto_0
.end method
