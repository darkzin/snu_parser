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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 44 of <array 95 of <array 62 of <array 68 of <array 55 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #    -17(%ebp)   1  [ $v2       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $v3       <int> %ebp-24 ]

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
    call    ReadInt                 #   0:     call   t2 <- ReadInt
    movl    %eax, -16(%ebp)        
l_f0_2_while_cond:
    movl    $8162, %eax             #   2:     if     8162 >= 84320 goto 3_while_body
    movl    $84320, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_3_while_body      
    jmp     l_f0_1                  #   3:     goto   1
l_f0_3_while_body:
    movl    $0, %eax                #   5:     assign v1 <- 0
    movb    %al, 12(%ebp)          
    movl    $51351, %eax            #   6:     if     51351 # 92452 goto 7_if_true
    movl    $92452, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_7_if_true         
    jmp     l_f0_8_if_false         #   7:     goto   8_if_false
l_f0_7_if_true:
    jmp     l_f0_6                  #   9:     goto   6
l_f0_8_if_false:
l_f0_6:
    movl    $100, %eax              #  12:     assign v2 <- 100
    movb    %al, -17(%ebp)         
    jmp     l_f0_exit              
l_f0_13_while_cond:
    jmp     l_f0_12                 #  15:     goto   12
    jmp     l_f0_13_while_cond      #  16:     goto   13_while_cond
l_f0_12:
    jmp     l_f0_2_while_cond       #  18:     goto   2_while_cond
l_f0_1:
    movl    $54516, %eax            #  20:     assign v3 <- 54516
    movl    %eax, -24(%ebp)        

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 37 of <array 29 of <array 40 of <array 61 of <array 28 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 12 of <array 76 of <array 21 of <array 78 of <array 60 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 24 of <array 23 of <array 12 of <array 56 of <array 53 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]
    #    -20(%ebp)   4  [ $v4       <int> %ebp-20 ]

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
l_f1_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t2 >= 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_2_while_body      
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_while_body:
    movl    $98, %eax               #   5:     return 98
    jmp     l_f1_exit              
    jmp     l_f1_1_while_cond       #   6:     goto   1_while_cond
l_f1_0:
l_f1_6_while_cond:
    movl    $100, %eax              #   9:     return 100
    jmp     l_f1_exit              
    movl    $100, %eax              #  10:     if     100 # 100 goto 10_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f1_10_if_true        
    jmp     l_f1_11_if_false        #  11:     goto   11_if_false
l_f1_10_if_true:
    jmp     l_f1_9                  #  13:     goto   9
l_f1_11_if_false:
l_f1_9:
    jmp     l_f1_6_while_cond       #  16:     goto   6_while_cond
l_f1_14_while_cond:
    movl    $0, %eax                #  18:     if     0 # 0 goto 15_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_15_while_body     
    jmp     l_f1_13                 #  19:     goto   13
l_f1_15_while_body:
    movl    $4669, %eax             #  21:     assign v4 <- 4669
    movl    %eax, -20(%ebp)        
    call    dummyBOOLfunc           #  22:     call   t3 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movl    $98, %eax               #  23:     return 98
    jmp     l_f1_exit              
    jmp     l_f1_14_while_cond      #  24:     goto   14_while_cond
l_f1_13:

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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t4       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t5       <bool> %ebp-19 ]
    #    -20(%ebp)   1  [ $t6       <bool> %ebp-20 ]
    #    -21(%ebp)   1  [ $t7       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t8       <bool> %ebp-22 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 86 of <array 60 of <array 98 of <array 41 of <array 37 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 39 of <array 86 of <array 32 of <array 94 of <array 69 of <bool>>>>>>> %ebp+20 ]
    #    -23(%ebp)   1  [ $v4       <char> %ebp-23 ]

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
    movl    $60738, %eax            #   0:     sub    t2 <- 60738, 94404
    movl    $94404, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $14453, %eax            #   1:     if     14453 >= t2 goto 1_if_true
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   2:     goto   2_if_false
l_f2_1_if_true:
    movl    $97, %eax               #   4:     if     97 > 100 goto 5
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f2_5                 
    jmp     l_f2_6                  #   5:     goto   6
l_f2_5:
    movl    $1, %eax                #   7:     assign t3 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_7                  #   8:     goto   7
l_f2_6:
    movl    $0, %eax                #  10:     assign t3 <- 0
    movb    %al, -17(%ebp)         
l_f2_7:
    movzbl  -17(%ebp), %eax         #  12:     return t3
    jmp     l_f2_exit              
    movl    $99, %eax               #  13:     assign v4 <- 99
    movb    %al, -23(%ebp)         
    call    dummyBOOLfunc           #  14:     call   t4 <- dummyBOOLfunc
    movb    %al, -18(%ebp)         
    jmp     l_f2_0                  #  15:     goto   0
l_f2_2_if_false:
l_f2_0:
    call    dummyBOOLfunc           #  18:     call   t5 <- dummyBOOLfunc
    movb    %al, -19(%ebp)         
    movzbl  -19(%ebp), %eax         #  19:     if     t5 = 1 goto 12
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_12                
    jmp     l_f2_13                 #  20:     goto   13
l_f2_12:
    movl    $1, %eax                #  22:     assign t6 <- 1
    movb    %al, -20(%ebp)         
    jmp     l_f2_14                 #  23:     goto   14
l_f2_13:
    movl    $0, %eax                #  25:     assign t6 <- 0
    movb    %al, -20(%ebp)         
l_f2_14:
    movzbl  -20(%ebp), %eax         #  27:     return t6
    jmp     l_f2_exit              
    call    dummyBOOLfunc           #  28:     call   t7 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  29:     if     t7 = 1 goto 17
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_17                
l_f2_17:
    movl    $1, %eax                #  31:     assign t8 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f2_19                 #  32:     goto   19
    movl    $0, %eax                #  33:     assign t8 <- 0
    movb    %al, -22(%ebp)         
l_f2_19:
    movzbl  -22(%ebp), %eax         #  35:     return t8
    jmp     l_f2_exit              

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]

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
l_test_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   2:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -13(%ebp), %eax         #   3:     if     t0 < t1 goto 2_while_body
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_2_while_body    
    jmp     l_test_0                #   4:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   6:     goto   1_while_cond
l_test_0:
l_test_5_while_cond:
    movl    $0, %eax                #   9:     if     0 = 1 goto 6_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_6_while_body    
    jmp     l_test_4                #  10:     goto   4
l_test_6_while_body:
    jmp     l_test_exit            
l_test_10_while_cond:
    movl    $99, %eax               #  14:     if     99 = 100 goto 11_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_test_11_while_body   
    jmp     l_test_9                #  15:     goto   9
l_test_11_while_body:
    jmp     l_test_10_while_cond    #  17:     goto   10_while_cond
l_test_9:
    movl    $26171, %eax            #  19:     if     26171 > 37131 goto 14_if_true
    movl    $37131, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_14_if_true      
    jmp     l_test_15_if_false      #  20:     goto   15_if_false
l_test_14_if_true:
    jmp     l_test_13               #  22:     goto   13
l_test_15_if_false:
l_test_13:
    movl    $100, %eax              #  25:     if     100 = 98 goto 18_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_18_if_true      
    jmp     l_test_19_if_false      #  26:     goto   19_if_false
l_test_18_if_true:
    jmp     l_test_17               #  28:     goto   17
l_test_19_if_false:
l_test_17:
    jmp     l_test_exit            
    jmp     l_test_5_while_cond     #  32:     goto   5_while_cond
l_test_4:
    jmp     l_test_exit            
    jmp     l_test_exit            
    movl    $99, %eax               #  36:     assign v0 <- 99
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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
