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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t6       <char> %ebp-22 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 86 of <array 9 of <array 36 of <array 27 of <array 5 of <char>>>>>>> %ebp+12 ]

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
    movl    $72217, %eax            #   0:     add    t3 <- 72217, 31872
    movl    $31872, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t4 <- t3, 77525
    movl    $77525, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     return t4
    jmp     l_f0_exit              
l_f0_2_while_cond:
    call    dummyBOOLfunc           #   4:     call   t5 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    movl    $0, %eax                #   5:     if     0 = t5 goto 3_while_body
    movzbl  -21(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_3_while_body      
    jmp     l_f0_1                  #   6:     goto   1
l_f0_3_while_body:
    call    dummyCHARfunc           #   8:     call   t6 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
    movl    $12385, %eax            #   9:     return 12385
    jmp     l_f0_exit              
    movl    $25114, %eax            #  10:     return 25114
    jmp     l_f0_exit              
    movl    $3403, %eax             #  11:     if     3403 = 62972 goto 9_if_true
    movl    $62972, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_9_if_true         
    jmp     l_f0_10_if_false        #  12:     goto   10_if_false
l_f0_9_if_true:
    jmp     l_f0_8                  #  14:     goto   8
l_f0_10_if_false:
l_f0_8:
    movl    $45021, %eax            #  17:     assign v1 <- 45021
    movl    %eax, 8(%ebp)          
    jmp     l_f0_2_while_cond       #  18:     goto   2_while_cond
l_f0_1:
l_f0_14_while_cond:
    jmp     l_f0_15_while_body      #  21:     goto   15_while_body
l_f0_15_while_body:
    movl    $9754, %eax             #  23:     return 9754
    jmp     l_f0_exit              
    jmp     l_f0_21_if_false        #  24:     goto   21_if_false
    jmp     l_f0_19                 #  25:     goto   19
l_f0_21_if_false:
l_f0_19:
    jmp     l_f0_14_while_cond      #  28:     goto   14_while_cond

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
    #    -16(%ebp)   4  [ $t3       <ptr(4) to <array 86 of <array 9 of <array 36 of <array 27 of <array 5 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t9       <char> %ebp-37 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #   -3761704(%ebp)  3761664  [ $v2       <array 86 of <array 9 of <array 36 of <array 27 of <array 5 of <char>>>>>> %ebp-3761704 ]
    #   -3761705(%ebp)   1  [ $v3       <char> %ebp-3761705 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $3761696, %esp          # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $940424, %ecx          
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-3761704(%ebp)       # local array 'v2': 5 dimensions
    movl    $86,-3761700(%ebp)      #   dimension 1: 86 elements
    movl    $9,-3761696(%ebp)       #   dimension 2: 9 elements
    movl    $36,-3761692(%ebp)      #   dimension 3: 36 elements
    movl    $27,-3761688(%ebp)      #   dimension 4: 27 elements
    movl    $5,-3761684(%ebp)       #   dimension 5: 5 elements

    # function body
    leal    -3761704(%ebp), %eax    #   0:     &()    t3 <- v2
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  1 <- t3
    pushl   %eax                   
    movl    $25113, %eax            #   2:     sub    t4 <- 25113, 67021
    movl    $67021, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     add    t5 <- t4, 72453
    movl    $72453, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     add    t6 <- t5, 56996
    movl    $56996, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     sub    t7 <- t6, 63892
    movl    $63892, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   6:     param  0 <- t7
    pushl   %eax                   
    call    f0                      #   7:     call   t8 <- f0
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    $99, %eax               #   8:     assign v3 <- 99
    movb    %al, -3761705(%ebp)    
    call    dummyCHARfunc           #   9:     call   t9 <- dummyCHARfunc
    movb    %al, -37(%ebp)         
    movzbl  -37(%ebp), %eax         #  10:     return t9
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $3761696, %esp          # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t6       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $v1       <bool> %ebp-22 ]

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
    movl    $1, %eax                #   0:     return 1
    jmp     l_f2_exit              
    movl    $42184, %eax            #   1:     if     42184 >= 51633 goto 5_if_true
    movl    $51633, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_5_if_true         
    jmp     l_f2_6_if_false         #   2:     goto   6_if_false
l_f2_5_if_true:
    jmp     l_f2_4                  #   4:     goto   4
l_f2_6_if_false:
l_f2_4:
    jmp     l_f2_0                  #   7:     goto   0
l_f2_0:
l_f2_9_while_cond:
    call    dummyCHARfunc           #  10:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  11:     if     t3 > 100 goto 10_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f2_10_while_body     
    jmp     l_f2_8                  #  12:     goto   8
l_f2_10_while_body:
    jmp     l_f2_9_while_cond       #  14:     goto   9_while_cond
l_f2_8:
    jmp     l_f2_16                 #  16:     goto   16
    jmp     l_f2_17                 #  17:     goto   17
l_f2_16:
    movl    $1, %eax                #  19:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_18                 #  20:     goto   18
l_f2_17:
    movl    $0, %eax                #  22:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f2_18:
    movl    $1, %eax                #  24:     if     1 = t4 goto 13_if_true
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_13_if_true        
    jmp     l_f2_14_if_false        #  25:     goto   14_if_false
l_f2_13_if_true:
    jmp     l_f2_23_if_false        #  27:     goto   23_if_false
    jmp     l_f2_21                 #  28:     goto   21
l_f2_23_if_false:
l_f2_21:
    call    ReadInt                 #  31:     call   t5 <- ReadInt
    movl    %eax, -20(%ebp)        
l_f2_26_while_cond:
    jmp     l_f2_26_while_cond      #  33:     goto   26_while_cond
    movl    $0, %eax                #  34:     assign v1 <- 0
    movb    %al, -22(%ebp)         
    movl    $100, %eax              #  35:     if     100 > 98 goto 30
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_30                
    jmp     l_f2_31                 #  36:     goto   31
l_f2_30:
    movl    $1, %eax                #  38:     assign t6 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_32                 #  39:     goto   32
l_f2_31:
    movl    $0, %eax                #  41:     assign t6 <- 0
    movb    %al, -21(%ebp)         
l_f2_32:
    movzbl  -21(%ebp), %eax         #  43:     return t6
    jmp     l_f2_exit              
    jmp     l_f2_12                 #  44:     goto   12
l_f2_14_if_false:
l_f2_12:

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]

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
l_test_1_while_cond:
    jmp     l_test_0                #   1:     goto   0
    movl    $54844, %eax            #   2:     assign v0 <- 54844
    movl    %eax, v0               
    jmp     l_test_1_while_cond     #   3:     goto   1_while_cond
l_test_0:
    call    dummyBOOLfunc           #   5:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   6:     if     t0 = 1 goto 5_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_5_if_true       
    jmp     l_test_6_if_false       #   7:     goto   6_if_false
l_test_5_if_true:
    jmp     l_test_9_if_false       #   9:     goto   9_if_false
    jmp     l_test_7                #  10:     goto   7
l_test_9_if_false:
l_test_7:
    jmp     l_test_12_if_false      #  13:     goto   12_if_false
    jmp     l_test_10               #  14:     goto   10
l_test_12_if_false:
l_test_10:
    movl    $32863, %eax            #  17:     assign v0 <- 32863
    movl    %eax, v0               
    jmp     l_test_4                #  18:     goto   4
l_test_6_if_false:
l_test_4:
l_test_15_while_cond:
    jmp     l_test_21               #  22:     goto   21
    jmp     l_test_18               #  23:     goto   18
l_test_21:
l_test_18:
    movl    $1, %eax                #  26:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_20               #  27:     goto   20
    movl    $0, %eax                #  28:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_20:
    movzbl  -14(%ebp), %eax         #  30:     if     t1 = 0 goto 16_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_16_while_body   
    jmp     l_test_14               #  31:     goto   14
l_test_16_while_body:
    jmp     l_test_15_while_cond    #  33:     goto   15_while_cond
l_test_14:
    movl    $68954, %eax            #  35:     add    t2 <- 68954, 30012
    movl    $30012, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  36:     assign v0 <- t2
    movl    %eax, v0               
    movl    $0, %eax                #  37:     assign v1 <- 0
    movb    %al, v1                

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
