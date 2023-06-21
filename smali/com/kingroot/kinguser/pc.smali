.class Lcom/kingroot/kinguser/pc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bzp$b;


# instance fields
.field final synthetic val$name:Ljava/lang/String;

.field final synthetic yw:Lcom/kingroot/kinguser/oz;

.field final synthetic yz:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/oz;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/kingroot/kinguser/pc;->yw:Lcom/kingroot/kinguser/oz;

    iput-object p2, p0, Lcom/kingroot/kinguser/pc;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/kingroot/kinguser/pc;->yz:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/kingroot/kinguser/pc;->val$name:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/kingroot/kinguser/pc;->yz:Ljava/lang/String;

    return-object v0
.end method
