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
    #    -13(%ebp)   1  [ $t9       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 6 of <array 9 of <array 2 of <array 4 of <array 7 of <bool>>>>>>> %ebp+8 ]
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
    jmp     l_f0_1_if_true          #   0:     goto   1_if_true
l_f0_1_if_true:
    movl    $99, %eax               #   2:     return 99
    jmp     l_f0_exit              
    movl    $75533, %eax            #   3:     if     75533 # 6632 goto 7_if_true
    movl    $6632, %ebx            
    cmpl    %ebx, %eax             
    jne     l_f0_7_if_true         
    jmp     l_f0_8_if_false         #   4:     goto   8_if_false
l_f0_7_if_true:
    jmp     l_f0_6                  #   6:     goto   6
l_f0_8_if_false:
l_f0_6:
    jmp     l_f0_12_if_false        #   9:     goto   12_if_false
    jmp     l_f0_10                 #  10:     goto   10
l_f0_12_if_false:
l_f0_10:
    jmp     l_f0_0                  #  13:     goto   0
l_f0_0:
    jmp     l_f0_14_if_true         #  15:     goto   14_if_true
l_f0_14_if_true:
    jmp     l_f0_13                 #  17:     goto   13
l_f0_13:
    call    dummyCHARfunc           #  19:     call   t9 <- dummyCHARfunc
    movb    %al, -13(%ebp)         

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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t11      <ptr(4) to <array 6 of <array 9 of <array 2 of <array 4 of <array 7 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t12      <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t9       <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $v1       <char> %ebp-23 ]
    #   -3072(%ebp)  3048  [ $v2       <array 6 of <array 9 of <array 2 of <array 4 of <array 7 of <bool>>>>>> %ebp-3072 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $3060, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $765, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-3072(%ebp)          # local array 'v2': 5 dimensions
    movl    $6,-3068(%ebp)          #   dimension 1: 6 elements
    movl    $9,-3064(%ebp)          #   dimension 2: 9 elements
    movl    $2,-3060(%ebp)          #   dimension 3: 2 elements
    movl    $4,-3056(%ebp)          #   dimension 4: 4 elements
    movl    $7,-3052(%ebp)          #   dimension 5: 7 elements

    # function body
l_f1_1_while_cond:
    call    dummyBOOLfunc           #   1:     call   t9 <- dummyBOOLfunc
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #   2:     if     t9 = 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_2_while_body      
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_while_body:
    jmp     l_f1_5_if_false         #   5:     goto   5_if_false
    jmp     l_f1_3                  #   6:     goto   3
l_f1_5_if_false:
l_f1_3:
    jmp     l_f1_1_while_cond       #   9:     goto   1_while_cond
l_f1_0:
    movl    $99, %eax               #  11:     if     99 > 98 goto 7
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_7                 
    jmp     l_f1_8                  #  12:     goto   8
l_f1_7:
    movl    $1, %eax                #  14:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_9                  #  15:     goto   9
l_f1_8:
    movl    $0, %eax                #  17:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f1_9:
    movzbl  -13(%ebp), %eax         #  19:     param  1 <- t10
    pushl   %eax                   
    leal    -3072(%ebp), %eax       #  20:     &()    t11 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  21:     param  0 <- t11
    pushl   %eax                   
    call    f0                      #  22:     call   t12 <- f0
    addl    $8, %esp               
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  23:     assign v1 <- t12
    movb    %al, -23(%ebp)         
    movl    $100, %eax              #  24:     assign v1 <- 100
    movb    %al, -23(%ebp)         

l_f1_exit:
    # epilogue
    addl    $3060, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t9       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 6 of <array 6 of <array 9 of <array 8 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 4 of <array 5 of <array 1 of <array 1 of <array 6 of <int>>>>>>> %ebp+12 ]
    #    -15(%ebp)   1  [ $v3       <char> %ebp-15 ]

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
    movl    $100, %eax              #   0:     assign v3 <- 100
    movb    %al, -15(%ebp)         
l_f2_2_while_cond:
    call    f1                      #   2:     call   t9 <- f1
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   3:     if     t9 >= 98 goto 3_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_3_while_body      
    jmp     l_f2_1                  #   4:     goto   1
l_f2_3_while_body:
    jmp     l_f2_2_while_cond       #   6:     goto   2_while_cond
l_f2_1:
    call    f1                      #   8:     call   t10 <- f1
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   9:     return t10
    jmp     l_f2_exit              

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t8       <int> %ebp-48 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $36, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $9, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $49590, %eax            #   0:     div    t0 <- 49590, 33373
    movl    $33373, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     mul    t1 <- t0, 30964
    movl    $30964, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     div    t2 <- t1, 25993
    movl    $25993, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     mul    t3 <- t2, 60014
    movl    $60014, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     add    t4 <- t3, 85948
    movl    $85948, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   5:     sub    t5 <- t4, 11045
    movl    $11045, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   6:     add    t6 <- t5, 27274
    movl    $27274, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   7:     add    t7 <- t6, 49727
    movl    $49727, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   8:     assign v0 <- t7
    movl    %eax, v0               
    movl    $99, %eax               #   9:     if     99 >= 98 goto 2_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_2_if_true       
    jmp     l_test_3_if_false       #  10:     goto   3_if_false
l_test_2_if_true:
l_test_6_while_cond:
    movl    $78709, %eax            #  13:     if     78709 >= 65994 goto 7_while_body
    movl    $65994, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_7_while_body    
    jmp     l_test_5                #  14:     goto   5
l_test_7_while_body:
    jmp     l_test_6_while_cond     #  16:     goto   6_while_cond
l_test_5:
    jmp     l_test_exit            
    movl    $39226, %eax            #  19:     assign v0 <- 39226
    movl    %eax, v0               
    call    WriteLn                 #  20:     call   WriteLn
    jmp     l_test_12               #  21:     goto   12
l_test_12:
    movl    $3872, %eax             #  23:     sub    t8 <- 3872, 95137
    movl    $95137, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  24:     param  0 <- t8
    pushl   %eax                   
    call    WriteInt                #  25:     call   WriteInt
    addl    $4, %esp               
    jmp     l_test_1                #  26:     goto   1
l_test_3_if_false:
l_test_1:
l_test_17_while_cond:
    jmp     l_test_18_while_body    #  30:     goto   18_while_body
    jmp     l_test_18_while_body    #  31:     goto   18_while_body
    jmp     l_test_18_while_body    #  32:     goto   18_while_body
    jmp     l_test_16               #  33:     goto   16
l_test_18_while_body:
    jmp     l_test_exit            
    jmp     l_test_17_while_cond    #  36:     goto   17_while_cond
l_test_16:
l_test_26_while_cond:
    jmp     l_test_27_while_body    #  39:     goto   27_while_body
    jmp     l_test_27_while_body    #  40:     goto   27_while_body
    jmp     l_test_27_while_body    #  41:     goto   27_while_body
    jmp     l_test_27_while_body    #  42:     goto   27_while_body
    jmp     l_test_25               #  43:     goto   25
l_test_27_while_body:
    jmp     l_test_26_while_cond    #  45:     goto   26_while_cond
l_test_25:
    movl    $0, %eax                #  47:     assign v1 <- 0
    movb    %al, v1                

l_test_exit:
    # epilogue
    addl    $36, %esp               # remove locals
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
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
