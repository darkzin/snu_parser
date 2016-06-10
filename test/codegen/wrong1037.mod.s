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
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 61 of <array 9 of <array 62 of <array 28 of <array 24 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 68 of <array 24 of <array 82 of <array 7 of <array 58 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]

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
    jmp     l_f0_exit              
    call    ReadInt                 #   1:     call   t2 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $99568, %eax            #   2:     assign v2 <- 99568
    movl    %eax, 16(%ebp)         

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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 46 of <array 30 of <array 69 of <array 36 of <array 68 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 77 of <array 25 of <array 18 of <array 22 of <array 15 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]

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
l_f1_1_while_cond:
    jmp     l_f1_0                  #   1:     goto   0
l_f1_4_while_cond:
    movl    $98, %eax               #   3:     if     98 < 98 goto 5_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_5_while_body      
    jmp     l_f1_3                  #   4:     goto   3
l_f1_5_while_body:
    jmp     l_f1_4_while_cond       #   6:     goto   4_while_cond
l_f1_3:
    movl    $11304, %eax            #   8:     if     11304 > 58834 goto 8_if_true
    movl    $58834, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_8_if_true         
    jmp     l_f1_9_if_false         #   9:     goto   9_if_false
l_f1_8_if_true:
    jmp     l_f1_7                  #  11:     goto   7
l_f1_9_if_false:
l_f1_7:
    jmp     l_f1_1_while_cond       #  14:     goto   1_while_cond
l_f1_0:
    movl    $1, %eax                #  16:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_14                 #  17:     goto   14
    movl    $0, %eax                #  18:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f1_14:
    movzbl  -13(%ebp), %eax         #  20:     assign v3 <- t2
    movb    %al, 20(%ebp)          
    movl    $97, %eax               #  21:     if     97 > 98 goto 17_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_17_if_true        
    jmp     l_f1_18_if_false        #  22:     goto   18_if_false
l_f1_17_if_true:
    movl    $14702, %eax            #  24:     if     14702 < 40703 goto 21_if_true
    movl    $40703, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_21_if_true        
    jmp     l_f1_22_if_false        #  25:     goto   22_if_false
l_f1_21_if_true:
    movl    $5706, %eax             #  27:     if     5706 >= 50303 goto 25_if_true
    movl    $50303, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_25_if_true        
    jmp     l_f1_26_if_false        #  28:     goto   26_if_false
l_f1_25_if_true:
    jmp     l_f1_24                 #  30:     goto   24
l_f1_26_if_false:
l_f1_24:
    jmp     l_f1_20                 #  33:     goto   20
l_f1_22_if_false:
l_f1_20:
    jmp     l_f1_16                 #  36:     goto   16
l_f1_18_if_false:
l_f1_16:

l_f1_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <ptr(4) to <array 77 of <array 25 of <array 18 of <array 22 of <array 15 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t5       <bool> %ebp-22 ]
    #    -28(%ebp)   4  [ $t6       <ptr(4) to <array 46 of <array 30 of <array 69 of <array 36 of <array 68 of <int>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 88 of <array 9 of <array 83 of <array 41 of <array 92 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 63 of <array 19 of <array 42 of <array 2 of <array 83 of <bool>>>>>>> %ebp+20 ]
    #    -36(%ebp)   4  [ $v4       <int> %ebp-36 ]
    #   -932394300(%ebp)  932394264  [ $v5       <array 46 of <array 30 of <array 69 of <array 36 of <array 68 of <int>>>>>> %ebp-932394300 ]
    #   -943828824(%ebp)  11434524  [ $v6       <array 77 of <array 25 of <array 18 of <array 22 of <array 15 of <bool>>>>>> %ebp-943828824 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $943828812, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $235957203, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-932394300(%ebp)     # local array 'v5': 5 dimensions
    movl    $46,-932394296(%ebp)    #   dimension 1: 46 elements
    movl    $30,-932394292(%ebp)    #   dimension 2: 30 elements
    movl    $69,-932394288(%ebp)    #   dimension 3: 69 elements
    movl    $36,-932394284(%ebp)    #   dimension 4: 36 elements
    movl    $68,-932394280(%ebp)    #   dimension 5: 68 elements
    movl    $5,-943828824(%ebp)     # local array 'v6': 5 dimensions
    movl    $77,-943828820(%ebp)    #   dimension 1: 77 elements
    movl    $25,-943828816(%ebp)    #   dimension 2: 25 elements
    movl    $18,-943828812(%ebp)    #   dimension 3: 18 elements
    movl    $22,-943828808(%ebp)    #   dimension 4: 22 elements
    movl    $15,-943828804(%ebp)    #   dimension 5: 15 elements

    # function body
    jmp     l_f2_2_if_false         #   0:     goto   2_if_false
    movl    $54757, %eax            #   1:     assign v4 <- 54757
    movl    %eax, -36(%ebp)        
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_if_false:
l_f2_0:
l_f2_10_while_cond:
    movl    $77833, %eax            #   6:     if     77833 # 89997 goto 11_while_body
    movl    $89997, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_11_while_body     
    jmp     l_f2_9                  #   7:     goto   9
l_f2_11_while_body:
    jmp     l_f2_10_while_cond      #   9:     goto   10_while_cond
l_f2_9:
    movl    $100, %eax              #  11:     if     100 >= 99 goto 14_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_14_if_true        
    jmp     l_f2_15_if_false        #  12:     goto   15_if_false
l_f2_14_if_true:
    jmp     l_f2_13                 #  14:     goto   13
l_f2_15_if_false:
l_f2_13:
    movl    $97, %eax               #  17:     if     97 <= 97 goto 18
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_18                
    jmp     l_f2_19                 #  18:     goto   19
l_f2_18:
    movl    $1, %eax                #  20:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_20                 #  21:     goto   20
l_f2_19:
    movl    $0, %eax                #  23:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f2_20:
    movzbl  -13(%ebp), %eax         #  25:     param  3 <- t2
    pushl   %eax                   
    leal    -943828824(%ebp), %eax  #  26:     &()    t3 <- v6
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  27:     param  2 <- t3
    pushl   %eax                   
    call    dummyCHARfunc           #  28:     call   t4 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movl    $99, %eax               #  29:     if     99 >= t4 goto 22
    movzbl  -21(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f2_22                
    jmp     l_f2_23                 #  30:     goto   23
l_f2_22:
    movl    $1, %eax                #  32:     assign t5 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f2_24                 #  33:     goto   24
l_f2_23:
    movl    $0, %eax                #  35:     assign t5 <- 0
    movb    %al, -22(%ebp)         
l_f2_24:
    movzbl  -22(%ebp), %eax         #  37:     param  1 <- t5
    pushl   %eax                   
    leal    -932394300(%ebp), %eax  #  38:     &()    t6 <- v5
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  39:     param  0 <- t6
    pushl   %eax                   
    call    f1                      #  40:     call   t7 <- f1
    addl    $16, %esp              
    movl    %eax, -32(%ebp)        
    jmp     l_f2_6                  #  41:     goto   6
l_f2_6:
    jmp     l_f2_28_if_false        #  43:     goto   28_if_false
l_f2_30_while_cond:
    movl    $0, %eax                #  45:     if     0 = 1 goto 31_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_31_while_body     
    jmp     l_f2_29                 #  46:     goto   29
l_f2_31_while_body:
    jmp     l_f2_30_while_cond      #  48:     goto   30_while_cond
l_f2_29:
    movl    $100, %eax              #  50:     if     100 > 97 goto 34_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_34_if_true        
    jmp     l_f2_35_if_false        #  51:     goto   35_if_false
l_f2_34_if_true:
    jmp     l_f2_33                 #  53:     goto   33
l_f2_35_if_false:
l_f2_33:
    movl    $97, %eax               #  56:     if     97 <= 97 goto 38_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_38_if_true        
    jmp     l_f2_39_if_false        #  57:     goto   39_if_false
l_f2_38_if_true:
    jmp     l_f2_37                 #  59:     goto   37
l_f2_39_if_false:
l_f2_37:
    jmp     l_f2_26                 #  62:     goto   26
l_f2_28_if_false:
l_f2_26:

l_f2_exit:
    # epilogue
    addl    $943828812, %esp        # remove locals
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
    call    dummyBOOLfunc           #   1:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_test_3_while_cond:
l_test_6_while_cond:
    movl    $30423, %eax            #   4:     if     30423 > 65710 goto 7_while_body
    movl    $65710, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_7_while_body    
    jmp     l_test_5                #   5:     goto   5
l_test_7_while_body:
    jmp     l_test_6_while_cond     #   7:     goto   6_while_cond
l_test_5:
    jmp     l_test_3_while_cond     #   9:     goto   3_while_cond
    jmp     l_test_exit            
    jmp     l_test_12               #  11:     goto   12
    jmp     l_test_12               #  12:     goto   12
    movl    $1, %eax                #  13:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_13               #  14:     goto   13
l_test_12:
    movl    $0, %eax                #  16:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_13:
    movzbl  -14(%ebp), %eax         #  18:     assign v0 <- t1
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
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
