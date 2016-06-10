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
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t7       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $t8       <bool> %ebp-16 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]

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
    jmp     l_f0_6                  #   0:     goto   6
    movl    $1, %eax                #   1:     assign t5 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_7                  #   2:     goto   7
l_f0_6:
    movl    $0, %eax                #   4:     assign t5 <- 0
    movb    %al, -13(%ebp)         
l_f0_7:
    movl    $0, %eax                #   6:     if     0 # t5 goto 1
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_1                 
    jmp     l_f0_2                  #   7:     goto   2
l_f0_1:
    movl    $1, %eax                #   9:     assign t6 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_3                  #  10:     goto   3
l_f0_2:
    movl    $0, %eax                #  12:     assign t6 <- 0
    movb    %al, -14(%ebp)         
l_f0_3:
    movzbl  -14(%ebp), %eax         #  14:     return t6
    jmp     l_f0_exit              
    call    dummyCHARfunc           #  15:     call   t7 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movl    $97, %eax               #  16:     if     97 > 100 goto 12
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f0_12                
    jmp     l_f0_13                 #  17:     goto   13
l_f0_12:
    movl    $1, %eax                #  19:     assign t8 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f0_14                 #  20:     goto   14
l_f0_13:
    movl    $0, %eax                #  22:     assign t8 <- 0
    movb    %al, -16(%ebp)         
l_f0_14:
    movzbl  -16(%ebp), %eax         #  24:     return t8
    jmp     l_f0_exit              

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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t9       <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 18 of <array 35 of <array 22 of <array 46 of <array 80 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <bool> %ebp+20 ]
    #    -33(%ebp)   1  [ $v5       <char> %ebp-33 ]

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
    movl    $26376, %eax            #   0:     sub    t5 <- 26376, 82561
    movl    $82561, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $17126, %eax            #   1:     if     17126 < t5 goto 1_if_true
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   2:     goto   2_if_false
l_f1_1_if_true:
    call    dummyCHARfunc           #   4:     call   t6 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movl    $1, %eax                #   5:     assign v2 <- 1
    movb    %al, 12(%ebp)          
    jmp     l_f1_0                  #   6:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $35977, %eax            #   9:     sub    t7 <- 35977, 68552
    movl    $68552, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $68134, %eax            #  10:     div    t8 <- 68134, 64915
    movl    $64915, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  11:     add    t9 <- t7, t8
    movl    -28(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  12:     if     t9 = 61951 goto 7_if_true
    movl    $61951, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_7_if_true         
    jmp     l_f1_8_if_false         #  13:     goto   8_if_false
l_f1_7_if_true:
    jmp     l_f1_6                  #  15:     goto   6
l_f1_8_if_false:
l_f1_6:
l_f1_11_while_cond:
    movl    $82343, %eax            #  19:     if     82343 <= 51019 goto 12_while_body
    movl    $51019, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_12_while_body     
    jmp     l_f1_10                 #  20:     goto   10
l_f1_12_while_body:
    movl    $100, %eax              #  22:     assign v5 <- 100
    movb    %al, -33(%ebp)         
l_f1_16_while_cond:
    jmp     l_f1_15                 #  24:     goto   15
    jmp     l_f1_15                 #  25:     goto   15
    jmp     l_f1_15                 #  26:     goto   15
    jmp     l_f1_16_while_cond      #  27:     goto   16_while_cond
l_f1_15:
    jmp     l_f1_11_while_cond      #  29:     goto   11_while_cond
l_f1_10:

l_f1_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 84 of <array 54 of <array 78 of <array 25 of <array 54 of <bool>>>>>>> %ebp+8 ]
    #    -24(%ebp)   4  [ $v2       <int> %ebp-24 ]

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
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t5
    jmp     l_f2_exit              
    call    dummyBOOLfunc           #   2:     call   t6 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   3:     if     t6 = 1 goto 2_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   4:     goto   3_if_false
l_f2_2_if_true:
    jmp     l_f2_1                  #   6:     goto   1
l_f2_3_if_false:
l_f2_1:
    movl    $68501, %eax            #   9:     sub    t7 <- 68501, 82836
    movl    $82836, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     assign v2 <- t7
    movl    %eax, -24(%ebp)        

l_f2_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]
    #    -24(%ebp)   4  [ $t3       <ptr(4) to <array 84 of <array 54 of <array 78 of <array 25 of <array 54 of <bool>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t4       <char> %ebp-25 ]

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
    call    dummyINTfunc            #   0:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
l_test_6_while_cond:
    jmp     l_test_6_while_cond     #   2:     goto   6_while_cond
    jmp     l_test_exit            
    jmp     l_test_exit            
    call    dummyCHARfunc           #   5:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    jmp     l_test_exit            
    movl    $31585, %eax            #   7:     if     31585 < 50291 goto 13_if_true
    movl    $50291, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_13_if_true      
    jmp     l_test_14_if_false      #   8:     goto   14_if_false
l_test_13_if_true:
    jmp     l_test_12               #  10:     goto   12
l_test_14_if_false:
l_test_12:
    movl    $100, %eax              #  13:     assign v0 <- 100
    movb    %al, v0                
    jmp     l_test_exit            
    jmp     l_test_0                #  15:     goto   0
l_test_0:
    movl    $26057, %eax            #  17:     assign v1 <- 26057
    movl    %eax, v1               
l_test_20_while_cond:
    movl    $52062, %eax            #  19:     if     52062 = 90794 goto 23
    movl    $90794, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_23              
    jmp     l_test_24               #  20:     goto   24
l_test_23:
    movl    $1, %eax                #  22:     assign t2 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_test_25               #  23:     goto   25
l_test_24:
    movl    $0, %eax                #  25:     assign t2 <- 0
    movb    %al, -18(%ebp)         
l_test_25:
    movl    $1, %eax                #  27:     if     1 = t2 goto 21_while_body
    movzbl  -18(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_21_while_body   
    jmp     l_test_19               #  28:     goto   19
l_test_21_while_body:
    jmp     l_test_27               #  30:     goto   27
l_test_27:
    jmp     l_test_20_while_cond    #  32:     goto   20_while_cond
l_test_19:
    leal    v2, %eax                #  34:     &()    t3 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  35:     param  0 <- t3
    pushl   %eax                   
    call    f2                      #  36:     call   t4 <- f2
    addl    $4, %esp               
    movb    %al, -25(%ebp)         

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
v2:                                 # <array 84 of <array 54 of <array 78 of <array 25 of <array 54 of <bool>>>>>>
    .long    5
    .long   84
    .long   54
    .long   78
    .long   25
    .long   54
    .skip 477640800








    # end of global data section
    #-----------------------------------------

    .end
##################################################
