.class Lcom/kingroot/kinguser/aww$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aww;
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
        "Lcom/kingroot/kinguser/aga$c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic aVP:Lcom/kingroot/kinguser/aww;

.field private ahV:Ljava/text/Collator;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aww;)V
    .locals 1

    .prologue
    .line 131
    iput-object p1, p0, Lcom/kingroot/kinguser/aww$2;->aVP:Lcom/kingroot/kinguser/aww;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/aww$2;->ahV:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/aga$c;Lcom/kingroot/kinguser/aga$c;)I
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/kingroot/kinguser/aww$2;->ahV:Ljava/text/Collator;

    iget-object v1, p1, Lcom/kingroot/kinguser/aga$c;->name:Ljava/lang/String;

    iget-object v2, p2, Lcom/kingroot/kinguser/aga$c;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 131
    check-cast p1, Lcom/kingroot/kinguser/aga$c;

    check-cast p2, Lcom/kingroot/kinguser/aga$c;

    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/aww$2;->a(Lcom/kingroot/kinguser/aga$c;Lcom/kingroot/kinguser/aga$c;)I

    move-result v0

    return v0
.end method
