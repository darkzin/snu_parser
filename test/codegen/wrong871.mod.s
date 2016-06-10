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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t3       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 3 of <array 5 of <array 9 of <array 1 of <array 3 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 1 of <array 7 of <array 8 of <array 10 of <array 3 of <bool>>>>>>> %ebp+20 ]
    #    -16(%ebp)   1  [ $v5       <bool> %ebp-16 ]

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
    jmp     l_f0_exit              
    call    dummyBOOLfunc           #   2:     call   t2 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_f0_4_if_false         #   3:     goto   4_if_false
    movl    $49106, %eax            #   4:     if     49106 # 53369 goto 6
    movl    $53369, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_6                 
    jmp     l_f0_7                  #   5:     goto   7
l_f0_6:
    movl    $1, %eax                #   7:     assign t3 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_8                  #   8:     goto   8
l_f0_7:
    movl    $0, %eax                #  10:     assign t3 <- 0
    movb    %al, -15(%ebp)         
l_f0_8:
    movzbl  -15(%ebp), %eax         #  12:     assign v5 <- t3
    movb    %al, -16(%ebp)         
    jmp     l_f0_2                  #  13:     goto   2
l_f0_4_if_false:
l_f0_2:

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
    #    -16(%ebp)   4  [ $t1       <ptr(4) to <array 1 of <array 7 of <array 8 of <array 10 of <array 3 of <bool>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 3 of <array 5 of <array 9 of <array 1 of <array 3 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t4       <bool> %ebp-22 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #    -23(%ebp)   1  [ $v4       <bool> %ebp-23 ]
    #   -452(%ebp)  429  [ $v5       <array 3 of <array 5 of <array 9 of <array 1 of <array 3 of <char>>>>>> %ebp-452 ]
    #   -2156(%ebp)  1704  [ $v6       <array 1 of <array 7 of <array 8 of <array 10 of <array 3 of <bool>>>>>> %ebp-2156 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $2144, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $536, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-452(%ebp)           # local array 'v5': 5 dimensions
    movl    $3,-448(%ebp)           #   dimension 1: 3 elements
    movl    $5,-444(%ebp)           #   dimension 2: 5 elements
    movl    $9,-440(%ebp)           #   dimension 3: 9 elements
    movl    $1,-436(%ebp)           #   dimension 4: 1 elements
    movl    $3,-432(%ebp)           #   dimension 5: 3 elements
    movl    $5,-2156(%ebp)          # local array 'v6': 5 dimensions
    movl    $1,-2152(%ebp)          #   dimension 1: 1 elements
    movl    $7,-2148(%ebp)          #   dimension 2: 7 elements
    movl    $8,-2144(%ebp)          #   dimension 3: 8 elements
    movl    $10,-2140(%ebp)         #   dimension 4: 10 elements
    movl    $3,-2136(%ebp)          #   dimension 5: 3 elements

    # function body
    movl    $0, %eax                #   0:     assign v4 <- 0
    movb    %al, -23(%ebp)         
    leal    -2156(%ebp), %eax       #   1:     &()    t1 <- v6
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  3 <- t1
    pushl   %eax                   
    movl    $99, %eax               #   3:     param  2 <- 99
    pushl   %eax                   
    leal    -452(%ebp), %eax        #   4:     &()    t2 <- v5
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   5:     param  1 <- t2
    pushl   %eax                   
    movl    $92494, %eax            #   6:     param  0 <- 92494
    pushl   %eax                   
    call    f0                      #   7:     call   t3 <- f0
    addl    $16, %esp              
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #   8:     assign v2 <- t3
    movb    %al, 12(%ebp)          
l_f1_3_while_cond:
    call    dummyBOOLfunc           #  10:     call   t4 <- dummyBOOLfunc
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #  11:     if     t4 = 1 goto 6
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_6                 
    jmp     l_f1_2                  #  12:     goto   2
l_f1_6:
    jmp     l_f1_2                  #  14:     goto   2
    jmp     l_f1_3_while_cond       #  15:     goto   3_while_cond
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $2144, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 6 of <array 7 of <array 8 of <array 5 of <char>>>>>>> %ebp+12 ]
    #    -22(%ebp)   1  [ $v3       <char> %ebp-22 ]
    #    -23(%ebp)   1  [ $v4       <bool> %ebp-23 ]

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
    jmp     l_f2_1_if_true          #   0:     goto   1_if_true
    jmp     l_f2_1_if_true          #   1:     goto   1_if_true
    jmp     l_f2_1_if_true          #   2:     goto   1_if_true
    jmp     l_f2_2_if_false         #   3:     goto   2_if_false
l_f2_1_if_true:
    movl    $0, %eax                #   5:     if     0 # 0 goto 9_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_9_if_true         
    jmp     l_f2_10_if_false        #   6:     goto   10_if_false
l_f2_9_if_true:
    jmp     l_f2_8                  #   8:     goto   8
l_f2_10_if_false:
l_f2_8:
    movl    $76760, %eax            #  11:     param  2 <- 76760
    pushl   %eax                   
    movl    $98, %eax               #  12:     param  1 <- 98
    pushl   %eax                   
    movl    $98705, %eax            #  13:     param  0 <- 98705
    pushl   %eax                   
    call    f1                      #  14:     call   t1 <- f1
    addl    $12, %esp              
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #  15:     assign v3 <- 97
    movb    %al, -22(%ebp)         
    call    ReadInt                 #  16:     call   t2 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $56150, %eax            #  17:     assign v1 <- 56150
    movl    %eax, 8(%ebp)          
    jmp     l_f2_exit              
    movl    $1, %eax                #  19:     if     1 = 1 goto 18
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_18                
    jmp     l_f2_19                 #  20:     goto   19
l_f2_18:
    movl    $1, %eax                #  22:     assign t3 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_20                 #  23:     goto   20
l_f2_19:
    movl    $0, %eax                #  25:     assign t3 <- 0
    movb    %al, -21(%ebp)         
l_f2_20:
    movzbl  -21(%ebp), %eax         #  27:     assign v4 <- t3
    movb    %al, -23(%ebp)         
    jmp     l_f2_0                  #  28:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $82614, %eax            #  31:     if     82614 < 96618 goto 23_if_true
    movl    $96618, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_23_if_true        
    jmp     l_f2_24_if_false        #  32:     goto   24_if_false
l_f2_23_if_true:
    call    dummyProcedure          #  34:     call   dummyProcedure
    jmp     l_f2_exit              
    jmp     l_f2_exit              
    jmp     l_f2_22                 #  37:     goto   22
l_f2_24_if_false:
l_f2_22:
l_f2_30_while_cond:
    movl    $1, %eax                #  41:     if     1 # 1 goto 31_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_31_while_body     
    jmp     l_f2_29                 #  42:     goto   29
l_f2_31_while_body:
    jmp     l_f2_exit              
    movl    $0, %eax                #  45:     assign v4 <- 0
    movb    %al, -23(%ebp)         
    jmp     l_f2_30_while_cond      #  46:     goto   30_while_cond
l_f2_29:

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
l_test_2_while_cond:
    jmp     l_test_1                #   2:     goto   1
l_test_5_while_cond:
    movl    $99, %eax               #   4:     if     99 >= 100 goto 6_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_6_while_body    
    jmp     l_test_4                #   5:     goto   4
l_test_6_while_body:
    jmp     l_test_5_while_cond     #   7:     goto   5_while_cond
l_test_4:
l_test_9_while_cond:
    jmp     l_test_9_while_cond     #  10:     goto   9_while_cond
    call    ReadInt                 #  11:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_test_2_while_cond     #  12:     goto   2_while_cond
l_test_1:
    movl    $99, %eax               #  14:     if     99 <= 98 goto 13_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_13_if_true      
    jmp     l_test_14_if_false      #  15:     goto   14_if_false
l_test_13_if_true:
    movl    $97, %eax               #  17:     assign v0 <- 97
    movb    %al, v0                
    jmp     l_test_12               #  18:     goto   12
l_test_14_if_false:
l_test_12:
    movl    $100, %eax              #  21:     if     100 = 100 goto 18_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_test_18_if_true      
    jmp     l_test_19_if_false      #  22:     goto   19_if_false
l_test_18_if_true:
    call    WriteLn                 #  24:     call   WriteLn
    jmp     l_test_exit            
    movl    $36868, %eax            #  26:     assign v1 <- 36868
    movl    %eax, v1               
    jmp     l_test_17               #  27:     goto   17
l_test_19_if_false:
l_test_17:
    jmp     l_test_exit            
l_test_26_while_cond:
    jmp     l_test_exit            
    movl    $100, %eax              #  33:     if     100 = 99 goto 30_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_30_if_true      
    jmp     l_test_31_if_false      #  34:     goto   31_if_false
l_test_30_if_true:
    jmp     l_test_29               #  36:     goto   29
l_test_31_if_false:
l_test_29:
l_test_34_while_cond:
    jmp     l_test_33               #  40:     goto   33
    jmp     l_test_34_while_cond    #  41:     goto   34_while_cond
l_test_33:
    call    WriteLn                 #  43:     call   WriteLn
    jmp     l_test_exit            
    movl    $0, %eax                #  45:     assign v2 <- 0
    movb    %al, v2                
    movl    $51512, %eax            #  46:     if     51512 > 78485 goto 40_if_true
    movl    $78485, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_40_if_true      
    jmp     l_test_41_if_false      #  47:     goto   41_if_false
l_test_40_if_true:
    jmp     l_test_exit            
l_test_45_while_cond:
    jmp     l_test_45_while_cond    #  51:     goto   45_while_cond
    jmp     l_test_exit            
    jmp     l_test_39               #  53:     goto   39
l_test_41_if_false:
l_test_39:
    jmp     l_test_26_while_cond    #  56:     goto   26_while_cond

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
v2:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
