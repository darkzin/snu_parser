##################################################
# test
#

    #-----------------------------------------
    # text section
    #
    .text
    .align 4

    # entry point and pre-defined functions
    .global main
    .extern DIM
    .extern DOFS
    .extern ReadInt
    .extern WriteInt
    .extern WriteStr
    .extern WriteChar
    .extern WriteLn

    # scope dummyINTfunc
dummyINTfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyINTfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyCHARfunc
dummyCHARfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyCHARfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyBOOLfunc
dummyBOOLfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyBOOLfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyProcedure
dummyProcedure:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyProcedure_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f0
f0:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t4       <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $v1       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $v2       <bool> %ebp-33 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $79970, %eax            #   0:     sub    t1 <- 79970, 73276
    movl    $73276, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t2 <- t1, 48831
    movl    $48831, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v1 <- t2
    movl    %eax, -32(%ebp)        
    movl    $97168, %eax            #   3:     add    t3 <- 97168, 20454
    movl    $20454, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     assign v1 <- t3
    movl    %eax, -32(%ebp)        
    movl    $13623, %eax            #   5:     return 13623
    jmp     l_f0_exit              
    movl    $50002, %eax            #   6:     if     50002 >= 53214 goto 7
    movl    $53214, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_7                 
    jmp     l_f0_8                  #   7:     goto   8
l_f0_7:
    movl    $1, %eax                #   9:     assign t4 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f0_9                  #  10:     goto   9
l_f0_8:
    movl    $0, %eax                #  12:     assign t4 <- 0
    movb    %al, -25(%ebp)         
l_f0_9:
    movzbl  -25(%ebp), %eax         #  14:     assign v2 <- t4
    movb    %al, -33(%ebp)         
    jmp     l_f0_2                  #  15:     goto   2
l_f0_2:

l_f0_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t3       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t4       <bool> %ebp-16 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #    -17(%ebp)   1  [ $v2       <bool> %ebp-17 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $8, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    jmp     l_f1_2                  #   0:     goto   2
    jmp     l_f1_2                  #   1:     goto   2
    jmp     l_f1_2                  #   2:     goto   2
    movl    $88210, %eax            #   3:     if     88210 >= 6381 goto 1
    movl    $6381, %ebx            
    cmpl    %ebx, %eax             
    jge     l_f1_1                 
    jmp     l_f1_2                  #   4:     goto   2
l_f1_1:
    movl    $1, %eax                #   6:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #   7:     goto   3
l_f1_2:
    movl    $0, %eax                #   9:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movzbl  -13(%ebp), %eax         #  11:     return t1
    jmp     l_f1_exit              
l_f1_12_while_cond:
    movl    $100, %eax              #  13:     if     100 = 100 goto 15
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f1_15                
    jmp     l_f1_16                 #  14:     goto   16
l_f1_15:
    movl    $1, %eax                #  16:     assign t2 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_17                 #  17:     goto   17
l_f1_16:
    movl    $0, %eax                #  19:     assign t2 <- 0
    movb    %al, -14(%ebp)         
l_f1_17:
    movzbl  -14(%ebp), %eax         #  21:     return t2
    jmp     l_f1_exit              
    movl    $100, %eax              #  22:     if     100 >= 98 goto 20_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_20_if_true        
    jmp     l_f1_21_if_false        #  23:     goto   21_if_false
l_f1_20_if_true:
    jmp     l_f1_19                 #  25:     goto   19
l_f1_21_if_false:
l_f1_19:
    jmp     l_f1_25_if_false        #  28:     goto   25_if_false
    jmp     l_f1_23                 #  29:     goto   23
l_f1_25_if_false:
l_f1_23:
    call    dummyBOOLfunc           #  32:     call   t3 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
l_f1_28_while_cond:
    movl    $70228, %eax            #  34:     if     70228 = 42392 goto 29_while_body
    movl    $42392, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_29_while_body     
    jmp     l_f1_27                 #  35:     goto   27
l_f1_29_while_body:
    jmp     l_f1_28_while_cond      #  37:     goto   28_while_cond
l_f1_27:
    movl    $69799, %eax            #  39:     if     69799 # 4500 goto 32
    movl    $4500, %ebx            
    cmpl    %ebx, %eax             
    jne     l_f1_32                
    jmp     l_f1_33                 #  40:     goto   33
l_f1_32:
    movl    $1, %eax                #  42:     assign t4 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f1_34                 #  43:     goto   34
l_f1_33:
    movl    $0, %eax                #  45:     assign t4 <- 0
    movb    %al, -16(%ebp)         
l_f1_34:
    movzbl  -16(%ebp), %eax         #  47:     return t4
    jmp     l_f1_exit              
    movl    $1, %eax                #  48:     return 1
    jmp     l_f1_exit              
    jmp     l_f1_12_while_cond      #  49:     goto   12_while_cond
    movl    $0, %eax                #  50:     assign v2 <- 0
    movb    %al, -17(%ebp)         

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t3       <char> %ebp-15 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
    call    dummyCHARfunc           #   0:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t1
    jmp     l_f2_exit              
    movl    $37435, %eax            #   2:     if     37435 = 68574 goto 2_if_true
    movl    $68574, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   3:     goto   3_if_false
l_f2_2_if_true:
    jmp     l_f2_7_if_false         #   5:     goto   7_if_false
    jmp     l_f2_5                  #   6:     goto   5
l_f2_7_if_false:
l_f2_5:
    jmp     l_f2_1                  #   9:     goto   1
l_f2_3_if_false:
l_f2_1:
    jmp     l_f2_10_if_false        #  12:     goto   10_if_false
    movl    $61994, %eax            #  13:     if     61994 <= 46485 goto 12
    movl    $46485, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_12                
    jmp     l_f2_13                 #  14:     goto   13
l_f2_12:
    movl    $1, %eax                #  16:     assign t2 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_14                 #  17:     goto   14
l_f2_13:
    movl    $0, %eax                #  19:     assign t2 <- 0
    movb    %al, -14(%ebp)         
l_f2_14:
    movzbl  -14(%ebp), %eax         #  21:     assign v2 <- t2
    movb    %al, 12(%ebp)          
    call    dummyCHARfunc           #  22:     call   t3 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    jmp     l_f2_8                  #  23:     goto   8
l_f2_10_if_false:
l_f2_8:

l_f2_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
    movl    $100, %eax              #   0:     if     100 <= 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    movl    $96052, %eax            #   3:     if     96052 > 95566 goto 5_if_true
    movl    $95566, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_5_if_true       
    jmp     l_test_6_if_false       #   4:     goto   6_if_false
l_test_5_if_true:
    jmp     l_test_4                #   6:     goto   4
l_test_6_if_false:
l_test_4:
    jmp     l_test_0                #   9:     goto   0
l_test_2_if_false:
l_test_0:
    movl    $100, %eax              #  12:     if     100 # 98 goto 9_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_9_if_true       
    jmp     l_test_10_if_false      #  13:     goto   10_if_false
l_test_9_if_true:
    call    dummyCHARfunc           #  15:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  16:     assign v0 <- t0
    movb    %al, v0                
    jmp     l_test_8                #  17:     goto   8
l_test_10_if_false:
l_test_8:
    jmp     l_test_exit            
    jmp     l_test_19_if_false      #  21:     goto   19_if_false
    jmp     l_test_17               #  22:     goto   17
l_test_19_if_false:
l_test_17:
    jmp     l_test_exit            
    jmp     l_test_14               #  26:     goto   14
l_test_14:
    movl    $24737, %eax            #  28:     assign v1 <- 24737
    movl    %eax, v1               
    movl    $100, %eax              #  29:     assign v0 <- 100
    movb    %al, v0                

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # end of text section
    #-----------------------------------------

    #-----------------------------------------
    # global data section
    #
    .data
    .align 4

    # scope: test
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
