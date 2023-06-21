.class Lcom/kingroot/kinguser/axe$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axe$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/kingroot/kinguser/agd$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic aXX:Lcom/kingroot/kinguser/axe$2;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axe$2;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/kingroot/kinguser/axe$2$1;->aXX:Lcom/kingroot/kinguser/axe$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/agd$a;Lcom/kingroot/kinguser/agd$a;)I
    .locals 3

    .prologue
    .line 291
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    .line 292
    iget-object v1, p1, Lcom/kingroot/kinguser/agd$a;->name:Ljava/lang/String;

    iget-object v2, p2, Lcom/kingroot/kinguser/agd$a;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 288
    check-cast p1, Lcom/kingroot/kinguser/agd$a;

    check-cast p2, Lcom/kingroot/kinguser/agd$a;

    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/axe$2$1;->a(Lcom/kingroot/kinguser/agd$a;Lcom/kingroot/kinguser/agd$a;)I

    move-result v0

    return v0
.end method
