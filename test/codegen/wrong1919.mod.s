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
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <bool> %ebp-14 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #    -15(%ebp)   1  [ $v2       <char> %ebp-15 ]

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
    call    dummyCHARfunc           #   0:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v2 <- t6
    movb    %al, -15(%ebp)         
l_f0_2_while_cond:
    movl    $100, %eax              #   3:     if     100 < 98 goto 5
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_5                 
    jmp     l_f0_1                  #   4:     goto   1
l_f0_5:
    jmp     l_f0_1                  #   6:     goto   1
    jmp     l_f0_1                  #   7:     goto   1
    jmp     l_f0_2_while_cond       #   8:     goto   2_while_cond
l_f0_1:
    jmp     l_f0_9_if_false         #  10:     goto   9_if_false
l_f0_11_while_cond:
    jmp     l_f0_15                 #  12:     goto   15
    jmp     l_f0_15                 #  13:     goto   15
    jmp     l_f0_15                 #  14:     goto   15
    jmp     l_f0_15                 #  15:     goto   15
    movl    $1, %eax                #  16:     assign t7 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_16                 #  17:     goto   16
l_f0_15:
    movl    $0, %eax                #  19:     assign t7 <- 0
    movb    %al, -14(%ebp)         
l_f0_16:
    movl    $0, %eax                #  21:     if     0 # t7 goto 12_while_body
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_12_while_body     
    jmp     l_f0_10                 #  22:     goto   10
l_f0_12_while_body:
    jmp     l_f0_11_while_cond      #  24:     goto   11_while_cond
l_f0_10:
    jmp     l_f0_7                  #  26:     goto   7
l_f0_9_if_false:
l_f0_7:

l_f0_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t6       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t8       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t9       <bool> %ebp-25 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 70 of <array 99 of <array 1 of <array 72 of <array 62 of <bool>>>>>>> %ebp+8 ]

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
    call    dummyBOOLfunc           #   0:     call   t6 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $87483, %eax            #   1:     add    t7 <- 87483, 67417
    movl    $67417, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     sub    t8 <- t7, 44008
    movl    $44008, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     return t8
    jmp     l_f1_exit              
    call    dummyBOOLfunc           #   4:     call   t9 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         

l_f1_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t9       <char> %ebp-29 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 60 of <array 55 of <array 15 of <array 100 of <array 97 of <bool>>>>>>> %ebp+12 ]
    #    -30(%ebp)   1  [ $v3       <bool> %ebp-30 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $85972, %eax            #   0:     div    t6 <- 85972, 54018
    movl    $54018, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   1:     div    t7 <- t6, 61358
    movl    $61358, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   2:     add    t8 <- t7, 82258
    movl    $82258, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   3:     assign v1 <- t8
    movl    %eax, 8(%ebp)          
l_f2_2_while_cond:
    movl    $100, %eax              #   5:     if     100 <= 98 goto 3_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_3_while_body      
    jmp     l_f2_1                  #   6:     goto   1
l_f2_3_while_body:
    movl    $1, %eax                #   8:     assign v3 <- 1
    movb    %al, -30(%ebp)         
    call    dummyCHARfunc           #   9:     call   t9 <- dummyCHARfunc
    movb    %al, -29(%ebp)         
l_f2_8_while_cond:
    movl    $21834, %eax            #  11:     if     21834 # 39058 goto 9_while_body
    movl    $39058, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_9_while_body      
    jmp     l_f2_7                  #  12:     goto   7
l_f2_9_while_body:
    jmp     l_f2_8_while_cond       #  14:     goto   8_while_cond
l_f2_7:
    jmp     l_f2_2_while_cond       #  16:     goto   2_while_cond
l_f2_1:
    call    dummyCHARfunc           #  18:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         

l_f2_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 60 of <array 55 of <array 15 of <array 100 of <array 97 of <bool>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $t5       <char> %ebp-30 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    WriteLn                 #   0:     call   WriteLn
    jmp     l_test_3                #   1:     goto   3
    jmp     l_test_3                #   2:     goto   3
    movl    $1, %eax                #   3:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_4                #   4:     goto   4
l_test_3:
    movl    $0, %eax                #   6:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_4:
    movzbl  -13(%ebp), %eax         #   8:     assign v0 <- t0
    movb    %al, v0                
    call    dummyINTfunc            #   9:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $97, %eax               #  10:     if     97 <= 97 goto 9_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_9_if_true       
    jmp     l_test_10_if_false      #  11:     goto   10_if_false
l_test_9_if_true:
    movl    $29201, %eax            #  13:     if     29201 = 46385 goto 13
    movl    $46385, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_13              
    jmp     l_test_14               #  14:     goto   14
l_test_13:
    movl    $1, %eax                #  16:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_15               #  17:     goto   15
l_test_14:
    movl    $0, %eax                #  19:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_15:
    movzbl  -21(%ebp), %eax         #  21:     assign v0 <- t2
    movb    %al, v0                
    movl    $98, %eax               #  22:     assign v1 <- 98
    movb    %al, v1                
    leal    v2, %eax                #  23:     &()    t3 <- v2
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  24:     param  1 <- t3
    pushl   %eax                   
    movl    $61104, %eax            #  25:     param  0 <- 61104
    pushl   %eax                   
    call    f2                      #  26:     call   t4 <- f2
    addl    $8, %esp               
    movb    %al, -29(%ebp)         
    jmp     l_test_8                #  27:     goto   8
l_test_10_if_false:
l_test_8:
l_test_20_while_cond:
    call    dummyCHARfunc           #  31:     call   t5 <- dummyCHARfunc
    movb    %al, -30(%ebp)         
    movl    $100, %eax              #  32:     if     100 <= t5 goto 21_while_body
    movzbl  -30(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_21_while_body   
    jmp     l_test_19               #  33:     goto   19
l_test_21_while_body:
l_test_24_while_cond:
    movl    $97, %eax               #  36:     if     97 >= 99 goto 25_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_25_while_body   
    jmp     l_test_23               #  37:     goto   23
l_test_25_while_body:
    jmp     l_test_24_while_cond    #  39:     goto   24_while_cond
l_test_23:
    jmp     l_test_20_while_cond    #  41:     goto   20_while_cond
l_test_19:

l_test_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
v0:                                 # <bool>
    .skip    1
v1:                                 # <char>
    .skip    1
    .align   4
v2:                                 # <array 60 of <array 55 of <array 15 of <array 100 of <array 97 of <bool>>>>>>
    .long    5
    .long   60
    .long   55
    .long   15
    .long  100
    .long   97
    .skip 480150000








    # end of global data section
    #-----------------------------------------

    .end
##################################################
