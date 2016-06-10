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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 36 of <array 83 of <array 36 of <array 91 of <array 43 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v2 <- t0
    movb    %al, -15(%ebp)         
    movl    $99, %eax               #   2:     if     99 = 98 goto 5
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_5                 
    jmp     l_f0_6                  #   3:     goto   6
l_f0_5:
    movl    $1, %eax                #   5:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_7                  #   6:     goto   7
l_f0_6:
    movl    $0, %eax                #   8:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_f0_7:
    movl    $1, %eax                #  10:     if     1 = t1 goto 2_if_true
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_2_if_true         
    jmp     l_f0_3_if_false         #  11:     goto   3_if_false
l_f0_2_if_true:
    movl    $99, %eax               #  13:     assign v2 <- 99
    movb    %al, -15(%ebp)         
    movl    $87378, %eax            #  14:     if     87378 < 43623 goto 11_if_true
    movl    $43623, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_11_if_true        
    jmp     l_f0_12_if_false        #  15:     goto   12_if_false
l_f0_11_if_true:
    jmp     l_f0_10                 #  17:     goto   10
l_f0_12_if_false:
l_f0_10:
    jmp     l_f0_1                  #  20:     goto   1
l_f0_3_if_false:
l_f0_1:
l_f0_18_while_cond:
    movl    $100, %eax              #  24:     if     100 # 100 goto 19_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f0_19_while_body     
    jmp     l_f0_17                 #  25:     goto   17
l_f0_19_while_body:
    jmp     l_f0_18_while_cond      #  27:     goto   18_while_cond
l_f0_17:
    movl    $89704, %eax            #  29:     return 89704
    jmp     l_f0_exit              
l_f0_23_while_cond:
    movl    $10874, %eax            #  31:     if     10874 < 37630 goto 24_while_body
    movl    $37630, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_24_while_body     
    jmp     l_f0_22                 #  32:     goto   22
l_f0_24_while_body:
    jmp     l_f0_23_while_cond      #  34:     goto   23_while_cond
l_f0_22:
    jmp     l_f0_14                 #  36:     goto   14
l_f0_14:

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 28 of <array 31 of <array 26 of <array 33 of <array 100 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 21 of <array 79 of <array 35 of <array 56 of <array 96 of <char>>>>>>> %ebp+12 ]
    #    -21(%ebp)   1  [ $v2       <bool> %ebp-21 ]

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
    movl    $11967, %eax            #   0:     if     11967 > 13338 goto 1
    movl    $13338, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_1                 
    jmp     l_f1_2                  #   1:     goto   2
l_f1_1:
    movl    $1, %eax                #   3:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #   4:     goto   3
l_f1_2:
    movl    $0, %eax                #   6:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v2 <- t0
    movb    %al, -21(%ebp)         
    movl    $98, %eax               #   9:     if     98 <= 100 goto 6_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f1_6_if_true         
    jmp     l_f1_7_if_false         #  10:     goto   7_if_false
l_f1_6_if_true:
l_f1_10_while_cond:
    movl    $100, %eax              #  13:     if     100 > 98 goto 11_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_11_while_body     
    jmp     l_f1_9                  #  14:     goto   9
l_f1_11_while_body:
    jmp     l_f1_10_while_cond      #  16:     goto   10_while_cond
l_f1_9:
    movl    $81732, %eax            #  18:     div    t1 <- 81732, 63896
    movl    $63896, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  19:     return t1
    jmp     l_f1_exit              
    jmp     l_f1_5                  #  20:     goto   5
l_f1_7_if_false:
l_f1_5:
    call    dummyProcedure          #  23:     call   dummyProcedure

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 76 of <array 90 of <array 51 of <array 63 of <array 49 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 22 of <array 32 of <array 30 of <array 20 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 82 of <array 12 of <array 62 of <array 32 of <array 19 of <char>>>>>>> %ebp+16 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #   1:     if     98 > t0 goto 1_if_true
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   2:     goto   2_if_false
l_f2_1_if_true:
    jmp     l_f2_0                  #   4:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $99, %eax               #   7:     return 99
    jmp     l_f2_exit              
l_f2_6_while_cond:
    movl    $72018, %eax            #   9:     div    t1 <- 72018, 19146
    movl    $19146, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     div    t2 <- t1, 31142
    movl    $31142, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  11:     add    t3 <- t2, 86964
    movl    $86964, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $8931, %eax             #  12:     if     8931 >= t3 goto 7_while_body
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f2_7_while_body      
    jmp     l_f2_5                  #  13:     goto   5
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #  15:     goto   6_while_cond
l_f2_5:

l_f2_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
l_test_1_while_cond:
    jmp     l_test_0                #   1:     goto   0
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_1_while_cond     #   4:     goto   1_while_cond
l_test_0:
    movl    $55261, %eax            #   6:     if     55261 < 98193 goto 6_if_true
    movl    $98193, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_6_if_true       
    jmp     l_test_7_if_false       #   7:     goto   7_if_false
l_test_6_if_true:
    movl    $98, %eax               #   9:     assign v0 <- 98
    movb    %al, v0                
l_test_11_while_cond:
    jmp     l_test_11_while_cond    #  11:     goto   11_while_cond
    jmp     l_test_exit            
l_test_15_while_cond:
    movl    $71003, %eax            #  14:     if     71003 <= 15552 goto 16_while_body
    movl    $15552, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_16_while_body   
    jmp     l_test_14               #  15:     goto   14
l_test_16_while_body:
    jmp     l_test_15_while_cond    #  17:     goto   15_while_cond
l_test_14:
    jmp     l_test_exit            
    jmp     l_test_5                #  20:     goto   5
l_test_7_if_false:
l_test_5:
    movl    $97, %eax               #  23:     if     97 > 97 goto 20_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_20_if_true      
    jmp     l_test_21_if_false      #  24:     goto   21_if_false
l_test_20_if_true:
l_test_24_while_cond:
    jmp     l_test_24_while_cond    #  27:     goto   24_while_cond
l_test_27_while_cond:
    movl    $97, %eax               #  29:     if     97 <= 97 goto 28_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_28_while_body   
    jmp     l_test_26               #  30:     goto   26
l_test_28_while_body:
    jmp     l_test_27_while_cond    #  32:     goto   27_while_cond
l_test_26:
    jmp     l_test_19               #  34:     goto   19
l_test_21_if_false:
l_test_19:
    movl    $97, %eax               #  37:     assign v0 <- 97
    movb    %al, v0                

l_test_exit:
    # epilogue
    addl    $0, %esp                # remove locals
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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
