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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 3 of <array 2 of <array 7 of <array 4 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #    -14(%ebp)   1  [ $v3       <char> %ebp-14 ]

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
    jmp     l_f0_2_if_false         #   0:     goto   2_if_false
    movl    $57262, %eax            #   1:     if     57262 >= 99705 goto 4_if_true
    movl    $99705, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_4_if_true         
    jmp     l_f0_5_if_false         #   2:     goto   5_if_false
l_f0_4_if_true:
    jmp     l_f0_3                  #   4:     goto   3
l_f0_5_if_false:
l_f0_3:
    call    dummyProcedure          #   7:     call   dummyProcedure
    movl    $100, %eax              #   8:     assign v3 <- 100
    movb    %al, -14(%ebp)         
    jmp     l_f0_0                  #   9:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    dummyCHARfunc           #  12:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  13:     return t2
    jmp     l_f0_exit              
    movl    $0, %eax                #  14:     assign v2 <- 0
    movb    %al, 16(%ebp)          

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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t4       <ptr(4) to <array 4 of <array 3 of <array 2 of <array 7 of <array 4 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <char> %ebp-21 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 7 of <array 4 of <array 6 of <array 2 of <array 1 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 4 of <array 8 of <array 4 of <array 9 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]
    #   -720(%ebp)  696  [ $v4       <array 4 of <array 3 of <array 2 of <array 7 of <array 4 of <char>>>>>> %ebp-720 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $708, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $177, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-720(%ebp)           # local array 'v4': 5 dimensions
    movl    $4,-716(%ebp)           #   dimension 1: 4 elements
    movl    $3,-712(%ebp)           #   dimension 2: 3 elements
    movl    $2,-708(%ebp)           #   dimension 3: 2 elements
    movl    $7,-704(%ebp)           #   dimension 4: 7 elements
    movl    $4,-700(%ebp)           #   dimension 5: 4 elements

    # function body
l_f1_1_while_cond:
    movl    $85494, %eax            #   1:     if     85494 >= 82116 goto 2_while_body
    movl    $82116, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
l_f1_5_while_cond:
    movl    $100, %eax              #   5:     if     100 = 98 goto 6_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_6_while_body      
    jmp     l_f1_4                  #   6:     goto   4
l_f1_6_while_body:
    jmp     l_f1_5_while_cond       #   8:     goto   5_while_cond
l_f1_4:
l_f1_9_while_cond:
    jmp     l_f1_9_while_cond       #  11:     goto   9_while_cond
    movl    $100, %eax              #  12:     if     100 > 97 goto 12_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_12_if_true        
    jmp     l_f1_13_if_false        #  13:     goto   13_if_false
l_f1_12_if_true:
    jmp     l_f1_11                 #  15:     goto   11
l_f1_13_if_false:
l_f1_11:
    jmp     l_f1_17_if_false        #  18:     goto   17_if_false
    jmp     l_f1_15                 #  19:     goto   15
l_f1_17_if_false:
l_f1_15:
    movl    $98, %eax               #  22:     return 98
    jmp     l_f1_exit              
    call    dummyCHARfunc           #  23:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_1_while_cond       #  24:     goto   1_while_cond
l_f1_0:
l_f1_21_while_cond:
    movl    $89446, %eax            #  27:     if     89446 < 84900 goto 24
    movl    $84900, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_24                
    jmp     l_f1_25                 #  28:     goto   25
l_f1_24:
    movl    $1, %eax                #  30:     assign t3 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_26                 #  31:     goto   26
l_f1_25:
    movl    $0, %eax                #  33:     assign t3 <- 0
    movb    %al, -14(%ebp)         
l_f1_26:
    movzbl  -14(%ebp), %eax         #  35:     param  2 <- t3
    pushl   %eax                   
    leal    -720(%ebp), %eax        #  36:     &()    t4 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  37:     param  1 <- t4
    pushl   %eax                   
    movl    $0, %eax                #  38:     param  0 <- 0
    pushl   %eax                   
    call    f0                      #  39:     call   t5 <- f0
    addl    $12, %esp              
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  40:     if     t5 = 100 goto 22_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f1_22_while_body     
    jmp     l_f1_20                 #  41:     goto   20
l_f1_22_while_body:
    jmp     l_f1_21_while_cond      #  43:     goto   21_while_cond
l_f1_20:
l_f1_29_while_cond:
    jmp     l_f1_30_while_body      #  46:     goto   30_while_body
    jmp     l_f1_30_while_body      #  47:     goto   30_while_body
l_f1_30_while_body:
    jmp     l_f1_29_while_cond      #  49:     goto   29_while_cond

l_f1_exit:
    # epilogue
    addl    $708, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <ptr(4) to <array 4 of <array 3 of <array 2 of <array 7 of <array 4 of <char>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <char> %ebp-17 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 6 of <array 4 of <array 2 of <array 10 of <array 7 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 10 of <array 4 of <array 1 of <array 8 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #   -716(%ebp)  696  [ $v3       <array 4 of <array 3 of <array 2 of <array 7 of <array 4 of <char>>>>>> %ebp-716 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $704, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $176, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-716(%ebp)           # local array 'v3': 5 dimensions
    movl    $4,-712(%ebp)           #   dimension 1: 4 elements
    movl    $3,-708(%ebp)           #   dimension 2: 3 elements
    movl    $2,-704(%ebp)           #   dimension 3: 2 elements
    movl    $7,-700(%ebp)           #   dimension 4: 7 elements
    movl    $4,-696(%ebp)           #   dimension 5: 4 elements

    # function body
    movl    $0, %eax                #   0:     param  2 <- 0
    pushl   %eax                   
    leal    -716(%ebp), %eax        #   1:     &()    t2 <- v3
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  1 <- t2
    pushl   %eax                   
    movl    $0, %eax                #   3:     param  0 <- 0
    pushl   %eax                   
    call    f0                      #   4:     call   t3 <- f0
    addl    $12, %esp              
    movb    %al, -17(%ebp)         
    movl    $99, %eax               #   5:     if     99 > t3 goto 1_if_true
    movzbl  -17(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   6:     goto   2_if_false
l_f2_1_if_true:
    call    WriteLn                 #   8:     call   WriteLn
    movl    $98, %eax               #   9:     assign v2 <- 98
    movb    %al, 16(%ebp)          
    jmp     l_f2_0                  #  10:     goto   0
l_f2_2_if_false:
l_f2_0:
    jmp     l_f2_8_if_false         #  13:     goto   8_if_false
    movl    $27832, %eax            #  14:     return 27832
    jmp     l_f2_exit              
    jmp     l_f2_6                  #  15:     goto   6
l_f2_8_if_false:
l_f2_6:
    jmp     l_f2_12_if_true         #  18:     goto   12_if_true
l_f2_12_if_true:
    jmp     l_f2_11                 #  20:     goto   11
l_f2_11:

l_f2_exit:
    # epilogue
    addl    $704, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]

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
    jmp     l_test_exit            
    movl    $5759, %eax             #   1:     if     5759 = 818 goto 2_if_true
    movl    $818, %ebx             
    cmpl    %ebx, %eax             
    je      l_test_2_if_true       
    jmp     l_test_3_if_false       #   2:     goto   3_if_false
l_test_2_if_true:
    jmp     l_test_7_if_false       #   4:     goto   7_if_false
l_test_9_while_cond:
    movl    $97, %eax               #   6:     if     97 < 98 goto 10_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_10_while_body   
    jmp     l_test_8                #   7:     goto   8
l_test_10_while_body:
    jmp     l_test_9_while_cond     #   9:     goto   9_while_cond
l_test_8:
    jmp     l_test_5                #  11:     goto   5
l_test_7_if_false:
l_test_5:
    jmp     l_test_1                #  14:     goto   1
l_test_3_if_false:
l_test_1:
    call    dummyBOOLfunc           #  17:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  18:     if     t0 = 1 goto 13_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_13_if_true      
    jmp     l_test_14_if_false      #  19:     goto   14_if_false
l_test_13_if_true:
    call    dummyBOOLfunc           #  21:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_test_12               #  22:     goto   12
l_test_14_if_false:
l_test_12:
    jmp     l_test_exit            
    jmp     l_test_19_if_false      #  26:     goto   19_if_false
    movl    $55892, %eax            #  27:     assign v0 <- 55892
    movl    %eax, v0               
    jmp     l_test_17               #  28:     goto   17
l_test_19_if_false:
l_test_17:

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
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
