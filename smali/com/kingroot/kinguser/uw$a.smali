.class public Lcom/kingroot/kinguser/uw$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/uw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private Jn:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private Jp:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private Jq:[Ljava/lang/annotation/Annotation;

.field private mMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput-object p1, p0, Lcom/kingroot/kinguser/uw$a;->Jn:Ljava/lang/Object;

    .line 235
    iput-object p2, p0, Lcom/kingroot/kinguser/uw$a;->mMethod:Ljava/lang/reflect/Method;

    .line 236
    iput-object p3, p0, Lcom/kingroot/kinguser/uw$a;->Jp:Ljava/lang/Class;

    .line 237
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/uw$a;->Jq:[Ljava/lang/annotation/Annotation;

    .line 238
    return-void
.end method


# virtual methods
.method public kS()Lcom/kingroot/kinguser/uw;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kingroot/kinguser/uw",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 241
    new-instance v0, Lcom/kingroot/kinguser/uw;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/uw;-><init>(Lcom/kingroot/kinguser/uw$1;)V

    .line 242
    iget-object v1, p0, Lcom/kingroot/kinguser/uw$a;->mMethod:Ljava/lang/reflect/Method;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/uw;->a(Lcom/kingroot/kinguser/uw;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    .line 243
    iget-object v1, p0, Lcom/kingroot/kinguser/uw$a;->Jn:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/uw;->a(Lcom/kingroot/kinguser/uw;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-object v1, p0, Lcom/kingroot/kinguser/uw$a;->Jp:Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/uw;->a(Lcom/kingroot/kinguser/uw;Ljava/lang/Class;)Ljava/lang/Class;

    .line 245
    iget-object v1, p0, Lcom/kingroot/kinguser/uw$a;->Jq:[Ljava/lang/annotation/Annotation;

    invoke-static {v1}, Lcom/kingroot/kinguser/ur;->a([Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 246
    if-eqz v1, :cond_0

    .line 247
    invoke-static {v0, v1}, Lcom/kingroot/kinguser/uw;->a(Lcom/kingroot/kinguser/uw;Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;

    .line 251
    return-object v0

    .line 249
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal method, annotation can not found : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/uw$a;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
