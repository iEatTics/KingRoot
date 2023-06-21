.class public Lcom/kingroot/kinguser/adz;
.super Lcom/kingroot/kinguser/vo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/vo",
        "<",
        "Lcom/kingroot/kinguser/b;",
        ">;"
    }
.end annotation


# instance fields
.field private aeh:Lcom/kingroot/kinguser/vo$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/vo$a",
            "<",
            "Lcom/kingroot/kinguser/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/kingroot/kinguser/vo;-><init>()V

    .line 17
    new-instance v0, Lcom/kingroot/kinguser/adz$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/adz$1;-><init>(Lcom/kingroot/kinguser/adz;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/adz;->aeh:Lcom/kingroot/kinguser/vo$a;

    return-void
.end method


# virtual methods
.method public lO()Lcom/kingroot/kinguser/vo$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kingroot/kinguser/vo$a",
            "<",
            "Lcom/kingroot/kinguser/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/kingroot/kinguser/adz;->aeh:Lcom/kingroot/kinguser/vo$a;

    return-object v0
.end method
