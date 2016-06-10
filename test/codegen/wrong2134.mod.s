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
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 77 of <array 54 of <array 20 of <array 57 of <array 28 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 38 of <array 49 of <array 23 of <array 36 of <array 73 of <bool>>>>>>> %ebp+12 ]
    #    -25(%ebp)   1  [ $v2       <bool> %ebp-25 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 12(%esp)         
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    movl    $98, %eax               #   0:     if     98 # 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    movl    $65747, %eax            #   3:     if     65747 >= 87450 goto 5
    movl    $87450, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_5                 
    jmp     l_f0_6                  #   4:     goto   6
l_f0_5:
    movl    $1, %eax                #   6:     assign t4 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_7                  #   7:     goto   7
l_f0_6:
    movl    $0, %eax                #   9:     assign t4 <- 0
    movb    %al, -13(%ebp)         
l_f0_7:
    movzbl  -13(%ebp), %eax         #  11:     assign v2 <- t4
    movb    %al, -25(%ebp)         
    call    dummyBOOLfunc           #  12:     call   t5 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_f0_0                  #  13:     goto   0
l_f0_2_if_false:
l_f0_0:
l_f0_11_while_cond:
    jmp     l_f0_10                 #  17:     goto   10
    jmp     l_f0_15                 #  18:     goto   15
l_f0_15:
    jmp     l_f0_11_while_cond      #  20:     goto   11_while_cond
l_f0_10:
    movl    $44837, %eax            #  22:     add    t6 <- 44837, 4218
    movl    $4218, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  23:     sub    t7 <- t6, 33139
    movl    $33139, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  24:     return t7
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t6       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t7       <bool> %ebp-22 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $12, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    movl    $97, %eax               #   0:     if     97 = 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    call    ReadInt                 #   3:     call   t4 <- ReadInt
    movl    %eax, -16(%ebp)        
l_f1_6_while_cond:
    jmp     l_f1_5                  #   5:     goto   5
    jmp     l_f1_6_while_cond       #   6:     goto   6_while_cond
l_f1_5:
l_f1_9_while_cond:
    movl    $100, %eax              #   9:     if     100 # 99 goto 10_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_10_while_body     
    jmp     l_f1_8                  #  10:     goto   8
l_f1_10_while_body:
    jmp     l_f1_9_while_cond       #  12:     goto   9_while_cond
l_f1_8:
    jmp     l_f1_12                 #  14:     goto   12
l_f1_12:
    jmp     l_f1_0                  #  16:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $35807, %eax            #  19:     sub    t5 <- 35807, 1913
    movl    $1913, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  20:     if     t5 >= 65491 goto 16
    movl    $65491, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_16                
    jmp     l_f1_17                 #  21:     goto   17
l_f1_16:
    movl    $1, %eax                #  23:     assign t6 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_18                 #  24:     goto   18
l_f1_17:
    movl    $0, %eax                #  26:     assign t6 <- 0
    movb    %al, -21(%ebp)         
l_f1_18:
    movzbl  -21(%ebp), %eax         #  28:     assign v0 <- t6
    movb    %al, 8(%ebp)           
    movl    $99, %eax               #  29:     if     99 > 100 goto 24
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f1_24                
    jmp     l_f1_25                 #  30:     goto   25
l_f1_24:
    movl    $1, %eax                #  32:     assign t7 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f1_26                 #  33:     goto   26
l_f1_25:
    movl    $0, %eax                #  35:     assign t7 <- 0
    movb    %al, -22(%ebp)         
l_f1_26:
    movzbl  -22(%ebp), %eax         #  37:     assign v0 <- t7
    movb    %al, 8(%ebp)           
    jmp     l_f1_20                 #  38:     goto   20
l_f1_20:

l_f1_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #    -33(%ebp)   1  [ $v1       <char> %ebp-33 ]
    #    -34(%ebp)   1  [ $v2       <bool> %ebp-34 ]

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
l_f2_1_while_cond:
    jmp     l_f2_0                  #   1:     goto   0
    jmp     l_f2_5_if_false         #   2:     goto   5_if_false
    jmp     l_f2_3                  #   3:     goto   3
l_f2_5_if_false:
l_f2_3:
    call    dummyCHARfunc           #   6:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_f2_8_while_cond:
    jmp     l_f2_7                  #   8:     goto   7
    jmp     l_f2_8_while_cond       #   9:     goto   8_while_cond
l_f2_7:
    jmp     l_f2_1_while_cond       #  11:     goto   1_while_cond
l_f2_0:
    jmp     l_f2_12_if_false        #  13:     goto   12_if_false
    jmp     l_f2_14                 #  14:     goto   14
l_f2_14:
    movl    $99, %eax               #  16:     assign v1 <- 99
    movb    %al, -33(%ebp)         
    movl    $1, %eax                #  17:     assign v2 <- 1
    movb    %al, -34(%ebp)         
    jmp     l_f2_10                 #  18:     goto   10
l_f2_12_if_false:
l_f2_10:
l_f2_20_while_cond:
    movl    $7145, %eax             #  22:     add    t5 <- 7145, 41294
    movl    $41294, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  23:     sub    t6 <- t5, 8130
    movl    $8130, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  24:     sub    t7 <- t6, 86873
    movl    $86873, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  25:     add    t8 <- t7, 70212
    movl    $70212, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  26:     if     t8 >= 1529 goto 21_while_body
    movl    $1529, %ebx            
    cmpl    %ebx, %eax             
    jge     l_f2_21_while_body     
    jmp     l_f2_19                 #  27:     goto   19
l_f2_21_while_body:
    jmp     l_f2_20_while_cond      #  29:     goto   20_while_cond
l_f2_19:

l_f2_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $12, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    jmp     l_test_exit            
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_1                #   2:     goto   1
l_test_1:
    jmp     l_test_exit            
    call    dummyBOOLfunc           #   5:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movl    $10843, %eax            #   6:     sub    t2 <- 10843, 21460
    movl    $21460, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   7:     assign v0 <- t2
    movl    %eax, v0               
    call    dummyINTfunc            #   8:     call   t3 <- dummyINTfunc
    movl    %eax, -24(%ebp)        

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
