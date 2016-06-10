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
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]

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
    jmp     l_f0_2_if_true          #   1:     goto   2_if_true
    jmp     l_f0_2_if_true          #   2:     goto   2_if_true
    jmp     l_f0_2_if_true          #   3:     goto   2_if_true
    jmp     l_f0_3_if_false         #   4:     goto   3_if_false
l_f0_2_if_true:
    jmp     l_f0_1                  #   6:     goto   1
l_f0_3_if_false:
l_f0_1:
    call    dummyBOOLfunc           #   9:     call   t7 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  10:     return t7
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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t7       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t8       <bool> %ebp-19 ]
    #    -24(%ebp)   4  [ $t9       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 84 of <array 28 of <array 78 of <array 80 of <array 9 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 49 of <array 79 of <array 7 of <array 4 of <array 88 of <bool>>>>>>> %ebp+16 ]

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
    jmp     l_f1_5                  #   0:     goto   5
l_f1_5:
    call    dummyCHARfunc           #   2:     call   t6 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   3:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #   4:     call   t7 <- f0
    addl    $4, %esp               
    movb    %al, -18(%ebp)         
    jmp     l_f1_0                  #   5:     goto   0
l_f1_0:
    jmp     l_f1_11_if_false        #   7:     goto   11_if_false
    jmp     l_f1_11_if_false        #   8:     goto   11_if_false
    movl    $97, %eax               #   9:     param  0 <- 97
    pushl   %eax                   
    call    f0                      #  10:     call   t8 <- f0
    addl    $4, %esp               
    movb    %al, -19(%ebp)         
    call    dummyINTfunc            #  11:     call   t9 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    jmp     l_f1_9                  #  12:     goto   9
l_f1_11_if_false:
l_f1_9:
l_f1_17_while_cond:
    movl    $79553, %eax            #  16:     mul    t10 <- 79553, 36534
    movl    $36534, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $3937, %eax             #  17:     if     3937 > t10 goto 18_while_body
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_18_while_body     
    jmp     l_f1_16                 #  18:     goto   16
l_f1_18_while_body:
    jmp     l_f1_22_if_false        #  20:     goto   22_if_false
    jmp     l_f1_20                 #  21:     goto   20
l_f1_22_if_false:
l_f1_20:
    jmp     l_f1_17_while_cond      #  24:     goto   17_while_cond
l_f1_16:

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
    #    -16(%ebp)   4  [ $t6       <int> %ebp-16 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 37 of <array 81 of <array 78 of <array 100 of <array 26 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 69 of <array 89 of <array 89 of <array 9 of <array 58 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <bool> %ebp+20 ]
    #    -20(%ebp)   4  [ $v5       <int> %ebp-20 ]

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
    movl    $0, %eax                #   0:     if     0 # 1 goto 1_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    movl    $54460, %eax            #   3:     return 54460
    jmp     l_f2_exit              
    movl    $99745, %eax            #   4:     return 99745
    jmp     l_f2_exit              
    movl    $68582, %eax            #   5:     param  0 <- 68582
    pushl   %eax                   
    call    WriteInt                #   6:     call   WriteInt
    addl    $4, %esp               
l_f2_8_while_cond:
    movl    $98, %eax               #   8:     if     98 <= 98 goto 9_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_9_while_body      
    jmp     l_f2_7                  #   9:     goto   7
l_f2_9_while_body:
    jmp     l_f2_8_while_cond       #  11:     goto   8_while_cond
l_f2_7:
    movl    $71762, %eax            #  13:     return 71762
    jmp     l_f2_exit              
    jmp     l_f2_0                  #  14:     goto   0
l_f2_2_if_false:
l_f2_0:
    call    dummyINTfunc            #  17:     call   t6 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $71043, %eax            #  18:     assign v5 <- 71043
    movl    %eax, -20(%ebp)        

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t5       <bool> %ebp-33 ]

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
l_test_1_while_cond:
    jmp     l_test_0                #   1:     goto   0
    call    dummyProcedure          #   2:     call   dummyProcedure
    movl    $97, %eax               #   3:     assign v0 <- 97
    movb    %al, v0                
    call    ReadInt                 #   4:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_test_7                #   5:     goto   7
l_test_7:
l_test_11_while_cond:
    movl    $1, %eax                #   8:     if     1 # 1 goto 12_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_12_while_body   
    jmp     l_test_10               #   9:     goto   10
l_test_12_while_body:
    jmp     l_test_11_while_cond    #  11:     goto   11_while_cond
l_test_10:
    call    dummyINTfunc            #  13:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_test_exit            
    jmp     l_test_1_while_cond     #  15:     goto   1_while_cond
l_test_0:
l_test_17_while_cond:
    jmp     l_test_16               #  18:     goto   16
    jmp     l_test_19               #  19:     goto   19
l_test_19:
    movl    $72848, %eax            #  21:     if     72848 > 61524 goto 23_if_true
    movl    $61524, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_23_if_true      
    jmp     l_test_24_if_false      #  22:     goto   24_if_false
l_test_23_if_true:
    jmp     l_test_22               #  24:     goto   22
l_test_24_if_false:
l_test_22:
    movl    $0, %eax                #  27:     assign v1 <- 0
    movb    %al, v1                
    jmp     l_test_27               #  28:     goto   27
l_test_27:
    movl    $80619, %eax            #  30:     if     80619 >= 1026 goto 31_if_true
    movl    $1026, %ebx            
    cmpl    %ebx, %eax             
    jge     l_test_31_if_true      
    jmp     l_test_32_if_false      #  31:     goto   32_if_false
l_test_31_if_true:
    jmp     l_test_30               #  33:     goto   30
l_test_32_if_false:
l_test_30:
    movl    $100, %eax              #  36:     assign v0 <- 100
    movb    %al, v0                
    movl    $100, %eax              #  37:     assign v0 <- 100
    movb    %al, v0                
    movl    $62004, %eax            #  38:     if     62004 <= 82017 goto 37
    movl    $82017, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_37              
    jmp     l_test_38               #  39:     goto   38
l_test_37:
    movl    $1, %eax                #  41:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_39               #  42:     goto   39
l_test_38:
    movl    $0, %eax                #  44:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_39:
    movzbl  -21(%ebp), %eax         #  46:     assign v1 <- t2
    movb    %al, v1                
    call    dummyINTfunc            #  47:     call   t3 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
l_test_43_while_cond:
    jmp     l_test_42               #  49:     goto   42
    jmp     l_test_43_while_cond    #  50:     goto   43_while_cond
l_test_42:
    call    dummyINTfunc            #  52:     call   t4 <- dummyINTfunc
    movl    %eax, -32(%ebp)        
    jmp     l_test_48_if_false      #  53:     goto   48_if_false
    jmp     l_test_46               #  54:     goto   46
l_test_48_if_false:
l_test_46:
    jmp     l_test_51_if_false      #  57:     goto   51_if_false
    jmp     l_test_49               #  58:     goto   49
l_test_51_if_false:
l_test_49:
    jmp     l_test_17_while_cond    #  61:     goto   17_while_cond
l_test_16:
    call    dummyBOOLfunc           #  63:     call   t5 <- dummyBOOLfunc
    movb    %al, -33(%ebp)         
    movl    $67138, %eax            #  64:     if     67138 <= 59636 goto 54_if_true
    movl    $59636, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_54_if_true      
    jmp     l_test_55_if_false      #  65:     goto   55_if_false
l_test_54_if_true:
    movl    $0, %eax                #  67:     if     0 = 0 goto 58_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_58_if_true      
    jmp     l_test_59_if_false      #  68:     goto   59_if_false
l_test_58_if_true:
    jmp     l_test_57               #  70:     goto   57
l_test_59_if_false:
l_test_57:
    jmp     l_test_exit            
    jmp     l_test_53               #  74:     goto   53
l_test_55_if_false:
l_test_53:

l_test_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
