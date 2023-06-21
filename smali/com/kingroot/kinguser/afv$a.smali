.class public Lcom/kingroot/kinguser/afv$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/afv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/afv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static ajq:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/afv$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ajr:Lcom/kingroot/kinguser/apv$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/kingroot/kinguser/afv$a$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/afv$a$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/afv$a;->ajq:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/kingroot/kinguser/afv$a$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/afv$a$2;-><init>(Lcom/kingroot/kinguser/afv$a;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/afv$a;->ajr:Lcom/kingroot/kinguser/apv$a;

    .line 43
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/afv$1;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/kingroot/kinguser/afv$a;-><init>()V

    return-void
.end method

.method public static vE()Lcom/kingroot/kinguser/afv$a;
    .locals 1
    .annotation runtime Lcom/kingroot/kinguser/ut;
    .end annotation

    .prologue
    .line 38
    sget-object v0, Lcom/kingroot/kinguser/afv$a;->ajq:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/afv$a;

    return-object v0
.end method


# virtual methods
.method public ad(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/afv$a;->ajr:Lcom/kingroot/kinguser/apv$a;

    invoke-virtual {v0, p1, v1}, Lcom/kingroot/kinguser/apv;->a(Ljava/util/List;Lcom/kingroot/kinguser/apv$a;)V

    .line 53
    return-void
.end method

.method public fj(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 47
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/afv$a;->ajr:Lcom/kingroot/kinguser/apv$a;

    invoke-virtual {v0, p1, v1}, Lcom/kingroot/kinguser/apv;->a(Ljava/lang/String;Lcom/kingroot/kinguser/apv$a;)V

    .line 48
    return-void
.end method
