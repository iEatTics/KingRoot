.class public Lcom/kingroot/kinguser/kq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final uf:Ljava/lang/String;

.field private final ug:Ljava/lang/String;

.field private final uh:Ljava/lang/String;

.field private final ui:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/kingroot/kinguser/kq;->uf:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/kingroot/kinguser/kq;->ug:Ljava/lang/String;

    .line 14
    iput-object p3, p0, Lcom/kingroot/kinguser/kq;->uh:Ljava/lang/String;

    .line 15
    iput-object p4, p0, Lcom/kingroot/kinguser/kq;->ui:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public de()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/kingroot/kinguser/kq;->uf:Ljava/lang/String;

    return-object v0
.end method

.method public df()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/kingroot/kinguser/kq;->ui:Ljava/lang/String;

    return-object v0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/kingroot/kinguser/kq;->ug:Ljava/lang/String;

    return-object v0
.end method
